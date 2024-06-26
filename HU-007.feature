Feature: HU-007 - Como usuario, quiero recibir recomendaciones para ajustar mi entorno de sueño para promover un mejor descanso.

Scenario: ES01 - Sugerir ajuste de temperatura
TA01
Given que el [usuario] ha registrado la [temperatura ambiente]
When la [temperatura registrada] está fuera del [rango óptimo] (18-22°C o 64-72°F)
Then la [aplicación] debería sugerir [ajustar la temperatura] a dentro del [rango óptimo] para mejorar el sueño

Examples:
| usuario | temperatura registrada | rango óptimo  |
| Jhosep  | 25°C                   | 18-22°C       |
| Fátima  | 75°F                   | 64-72°F       |

Scenario: ES02 - Sugerir reducción de ruido
TA02
Given que el [usuario] ha registrado el [nivel de ruido]
When el [nivel de ruido registrado] supera los [40 decibelios (dB)]
Then la [aplicación] debería sugerir [reducir el ruido] usando tapones para los oídos o máquinas de ruido blanco

Examples:
| usuario | nivel de ruido registrado | umbral de ruido |
| Jhosep  | 45 dB                     | 40 dB           |
| Fátima  | 50 dB                     | 40 dB           |

Scenario: ES03 - Sugerir reducción de luminosidad
TA03
Given que el [usuario] ha registrado el [nivel de luminosidad]
When el [nivel de luminosidad registrado] es mayor a [5 lux] durante el [tiempo de sueño]
Then la [aplicación] debería sugerir [reducir la luminosidad] usando cortinas opacas o máscaras de ojos

Examples:
| usuario | nivel de luminosidad registrado | umbral de luminosidad |
| Jhosep  | 10 lux                          | 5 lux                 |
| Fátima  | 8 lux                           | 5 lux                 |

Scenario: ES04 - Proporcionar lista de recomendaciones
TA04
Given que el [usuario] ha registrado [condiciones ambientales]
When la [aplicación] detecta cualquier [condición] fuera de los [rangos óptimos] (temperatura, ruido, luminosidad)
Then la [aplicación] debería [proporcionar una lista] de [recomendaciones específicas] para [ajustar el entorno] y [mejorar la calidad del sueño]

Examples:
| usuario | condiciones ambientales registradas   | recomendaciones específicas                        |
| Jhosep  | Temp: 25°C, Ruido: 45 dB, Luz: 10 lux | Ajustar temp a 18-22°C, reducir ruido, reducir luz |
| Fátima  | Temp: 75°F, Ruido: 50 dB, Luz: 8 lux  | Ajustar temp a 64-72°F, reducir ruido, reducir luz |