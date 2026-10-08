#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_log.h"
#include "brightness_control.h"

static const char *TAG = "CALL_TASK";

// Launcher task that initializes and starts brightness control, then self deletes.
static void call_brightness_control_task(void *pvParameters)
{
    esp_err_t ret = brightness_control_init();
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "brightness_control_init failed: %s", esp_err_to_name(ret));
        vTaskDelete(NULL);
        return;
    }

    ret = brightness_control_start();
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "brightness_control_start failed: %s", esp_err_to_name(ret));
        vTaskDelete(NULL);
        return;
    }

    ESP_LOGI(TAG, "Brightness control task started");
    vTaskDelete(NULL); // launcher finished
}

esp_err_t call_task_start(void)
{
    BaseType_t task_ret = xTaskCreate(
        call_brightness_control_task,
        "call_brightness_control",
        3072,
        NULL,
        5,
        NULL
    );

    if (task_ret != pdPASS) {
        ESP_LOGE(TAG, "Failed to create call task");
        return ESP_FAIL;
    }

    return ESP_OK;
}
