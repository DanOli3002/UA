#ifndef BRIGHTNESS_CONTROL_H
#define BRIGHTNESS_CONTROL_H

#include "esp_err.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief Initialize LEDC PWM and ADC used for backlight brightness control.
 *
 * @return ESP_OK on success, error code otherwise.
 */
esp_err_t brightness_control_init(void);

/**
 * @brief Start the FreeRTOS task that reads ADC and updates PWM duty.
 *
 * @return ESP_OK on success, error code otherwise.
 */
esp_err_t brightness_control_start(void);

#ifdef __cplusplus
}
#endif
#endif