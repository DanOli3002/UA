idf_component_register(SRCS "call_task.c" "brightness_control.c" "app_main.c"
                    PRIV_REQUIRES mqtt esp_wifi nvs_flash
                    INCLUDE_DIRS ".")
