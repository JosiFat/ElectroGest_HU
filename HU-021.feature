Feature: HU-021 - Como usuario, quiero acceder a un historial de mis registros de sueño para ver mis progresos y cambios a lo largo del tiempo.

Scenario: ES01 - Visualización de historial de registros de sueño
TA01
Given que el [usuario] desea revisar su [historial de registros de sueño]
And el [usuario] accede a la [función de historial de sueño] en la [aplicación]
When el [usuario] accede a la [función de historial]
Then la [aplicación] muestra una [lista de todos los registros de sueño] previamente guardados por el [usuario].

Examples:
| usuario  | historial de registros de sueño | función de historial de sueño | lista de registros de sueño         |
| Jhosep   | sí                              | menú de historial             | 2023-06-21, 2023-06-22, 2023-06-23  |
| Fátima   | sí                              | sección de historial          | 2023-06-21, 2023-06-22, 2023-06-23  |

Scenario: ES02 - Visualización detallada de un registro de sueño específico
TA02
Given que el [usuario] selecciona un [registro de sueño específico]
And el [usuario] visualiza los [detalles de ese registro en particular]
When el [usuario] selecciona un [registro]
Then la [aplicación] muestra [información detallada] sobre la [duración del sueño], los [ciclos y fases del sueño], la [eficiencia del sueño] y otros [datos relevantes].

Examples:
| usuario  | registro de sueño específico | detalles de ese registro en particular | duración del sueño | ciclos y fases del sueño | eficiencia del sueño | datos relevantes                |
| Jhosep   | 2023-06-21                   | sí                                     | 8 horas            | 4 ciclos                 | 85%                   | tiempo en REM, tiempo en sueño ligero |
| Fátima   | 2023-06-22                   | sí                                     | 7 horas            | 3 ciclos                 | 80%                   | tiempo en REM, tiempo en sueño profundo|

Scenario: ES03 - Análisis de tendencias en el historial de sueño
TA03
Given que el [usuario] desea analizar [tendencias] en su [historial de sueño]
And el [usuario] accede a la [función de análisis de tendencias] en la [aplicación]
When el [usuario] accede a la [función de análisis de tendencias]
Then la [aplicación] proporciona [herramientas] para [analizar y visualizar] tendencias a lo largo del tiempo, como [cambios en la duración del sueño] o la [eficiencia del mismo].

Examples:
| usuario  | tendencias | historial de sueño | función de análisis de tendencias | herramientas           | cambios en la duración del sueño | eficiencia del mismo |
| Jhosep   | sí         | sí                 | menú de tendencias                | gráficos, estadísticas | aumento/disminución              | mejora/empeoramiento |
| Fátima   | sí         | sí                 | sección de tendencias             | reportes, comparativas | aumento/disminución              | mejora/empeoramiento |