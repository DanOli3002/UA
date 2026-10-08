#include "brightness_control.h"
#include "esp_log.h"
#include "driver/ledc.h"
#include "esp_adc/adc_oneshot.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <math.h>

static const char *TAG = "BRIGHTNESS";

// Configuração de pinos
#define PWM_GPIO_PIN    15      // GPIO para backlight (PWM)
#define ADC_GPIO_PIN    0       // GPIO para potenciómetro (ADC)

// Configuração PWM/LEDC
#define PWM_FREQUENCY   5000    // 5 kHz
#define PWM_DUTY_RES    LEDC_TIMER_10_BIT  // 10-bit (0-1023)
#define PWM_CHANNEL     LEDC_CHANNEL_0
#define PWM_TIMER       LEDC_TIMER_0
#define PWM_MODE        LEDC_LOW_SPEED_MODE

// Configuração ADC
#define ADC_UNIT        ADC_UNIT_1
#define ADC_CHANNEL     ADC_CHANNEL_0   // GPIO 0 é ADC1_CH0

// Suavização de leitura
#define ADC_SAMPLES     10
#define UPDATE_DELAY_MS 100

static adc_oneshot_unit_handle_t adc_handle = NULL;
static uint16_t last_duty = 0;

/**
 * @brief Tarefa para leitura do ADC e atualização do PWM
 */
static void brightness_task(void *pvParameters)
{
    int raw_readings[ADC_SAMPLES];
    
    while (1) {
        // Coleta múltiplas amostras para suavização
        int adc_sum = 0;
        for (int i = 0; i < ADC_SAMPLES; i++) {
            adc_oneshot_read(adc_handle, ADC_CHANNEL, &raw_readings[i]);
            adc_sum += raw_readings[i];
            vTaskDelay(pdMS_TO_TICKS(5));
        }
        
        // Calcula a média
        int adc_avg = adc_sum / ADC_SAMPLES;
        
        // Converte valor ADC (0-4095) para duty cycle PWM (0-1023)
        // Mapeia linearmente: 0 (minimo brilho) a 1023 (maximo brilho)
        uint16_t duty = (uint16_t)((adc_avg / 4095.0f) * 1023);
        
        // Hysteresis: só atualiza se mudou mais que 10 unidades
        if (abs(duty - last_duty) > 10) {
            ledc_set_duty(PWM_MODE, PWM_CHANNEL, duty);
            ledc_update_duty(PWM_MODE, PWM_CHANNEL);
            
            // Calcula percentagem de brilho
            float brightness_percent = (duty / 1023.0f) * 100.0f;
            ESP_LOGI(TAG, "Brilho atualizado: ADC=%d, PWM=%u, %%=%.1f", adc_avg, duty, brightness_percent);
            
            last_duty = duty;
        }
        
        vTaskDelay(pdMS_TO_TICKS(UPDATE_DELAY_MS));
    }
}

/**
 * @brief Inicializa o controle de brilho
 */
esp_err_t brightness_control_init(void)
{
    ESP_LOGI(TAG, "Inicializando controle de brilho...");
    
    // ===== Configuração do PWM (LEDC) =====
    ledc_timer_config_t timer_cfg = {
        .speed_mode = PWM_MODE,
        .timer_num = PWM_TIMER,
        .duty_resolution = PWM_DUTY_RES,
        .freq_hz = PWM_FREQUENCY,
        .clk_cfg = LEDC_AUTO_CLK
    };
    
    esp_err_t ret = ledc_timer_config(&timer_cfg);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Falha ao configurar timer PWM: %s", esp_err_to_name(ret));
        return ret;
    }
    
    ledc_channel_config_t channel_cfg = {
        .speed_mode = PWM_MODE,
        .channel = PWM_CHANNEL,
        .timer_sel = PWM_TIMER,
        .intr_type = LEDC_INTR_DISABLE,
        .gpio_num = PWM_GPIO_PIN,
        .duty = 512,  // 50% initial
        .hpoint = 0
    };
    
    ret = ledc_channel_config(&channel_cfg);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Falha ao configurar canal PWM: %s", esp_err_to_name(ret));
        return ret;
    }
    
    ESP_LOGI(TAG, "PWM configurado no GPIO %d (freq: %d Hz)", PWM_GPIO_PIN, PWM_FREQUENCY);
    
    // ===== Configuração do ADC =====
    adc_oneshot_unit_init_cfg_t init_cfg = {
        .unit_id = ADC_UNIT,
    };
    
    ret = adc_oneshot_new_unit(&init_cfg, &adc_handle);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Falha ao inicializar ADC: %s", esp_err_to_name(ret));
        return ret;
    }
    
    adc_oneshot_chan_cfg_t channel_cfg_adc = {
        .bitwidth = ADC_BITWIDTH_12,
        .atten = ADC_ATTEN_DB_12
    };
    
    ret = adc_oneshot_config_channel(adc_handle, ADC_CHANNEL, &channel_cfg_adc);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Falha ao configurar canal ADC: %s", esp_err_to_name(ret));
        return ret;
    }
    
    ESP_LOGI(TAG, "ADC configurado no GPIO %d", ADC_GPIO_PIN);
    ESP_LOGI(TAG, "Controle de brilho inicializado com sucesso");
    
    return ESP_OK;
}

/**
 * @brief Inicia a tarefa de controle de brilho
 */
esp_err_t brightness_control_start(void)
{
    BaseType_t task_ret = xTaskCreate(
        brightness_task,           // Função da tarefa
        "brightness_task",         // Nome da tarefa
        2048,                      // Stack size
        NULL,                      // Parâmetros
        2,                         // Prioridade (2 = baixa)
        NULL                       // Handle (não usado)
    );
    
    if (task_ret != pdPASS) {
        ESP_LOGE(TAG, "Falha ao criar tarefa de brilho");
        return ESP_FAIL;
    }
    
    ESP_LOGI(TAG, "Tarefa de controle de brilho iniciada");
    return ESP_OK;
}