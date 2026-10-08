/*
 * SPDX-FileCopyrightText: 2010-2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: CC0-1.0
 */

#include <stdio.h>
#include <inttypes.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_chip_info.h"
#include "esp_flash.h"
#include "esp_system.h"

void task1(void *parameter){
    const char *taskname = (const char *) parameter;
    while (true)
    {
        printf("reading temperature from %s\n", taskname);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}

void task2(void *parameter){
    const char *taskname = (const char *) parameter;
    while (true)
    {
        printf("reading humidity from %s\n", taskname);
        vTaskDelay(2000 / portTICK_PERIOD_MS);
    }
}

void app_main(void)
{
    xTaskCreate(task1, "Ler temperatura", 2048, "task1", 1, NULL);
    xTaskCreate(task2, "Ler humidade", 2048, "task2", 1, NULL);
}
