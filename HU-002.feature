Feature: HU-002 - Como usuario, quiero recibir informes detallados de mis patrones de sueño para 
identificar áreas de mejora.

Scenario: ES01 - Generar informe detallado de patrones de sueño
TA01
Given que el [usuario] ha iniciado sesión en la [aplicación] correctamente
And el [usuario] accede a la [sección de informes de patrones de sueño]
When el [usuario] accede a la [sección de informes de patrones de sueño]
Then el sistema genera un [informe detallado] basado en los [datos de seguimiento del sueño del usuario]
And muestra la [duración total del sueño], los [ciclos de sueño (ligero, profundo, REM)], la [eficiencia del sueño] y la [frecuencia de despertares]

Examples:
| usuario   | sección de informes de patrones de sueño | informe detallado                         |
| Jhosep    | informes de patrones de sueño            | duración, ciclos, eficiencia, despertares |
| Fátima    | informes de patrones de sueño            | duración, ciclos, eficiencia, despertares |

Scenario: ES02 - Comparar patrones de sueño con recomendaciones estándar
TA02
Given que el [usuario] está visualizando su [informe de patrones de sueño]
And el [usuario] revisa los [datos]
When el sistema compara los [patrones de sueño del usuario] con [recomendaciones estándar] basadas en la [edad] y otros [factores relevantes]
Then se muestran las [áreas] donde el [usuario] está [por encima o por debajo] de los patrones recomendados

Examples:
| usuario | informe de patrones de sueño | datos            | recomendaciones estándar  |
| Jhosep  | informe de patrones          | duración, ciclos | basado en edad y factores |
| Fátima  | informe de patrones          | duración, ciclos | basado en edad y factores |

Scenario: ES03 - Identificar tendencias en el historial de informes de patrones de sueño
TA03
Given que el [usuario] está explorando su [historial de informes de patrones de sueño]
And el [usuario] revisa los [informes anteriores]
When el [usuario] revisa los [informes anteriores]
Then el sistema identifica y destaca las [tendencias] a lo largo del tiempo, como [cambios en la duración del sueño] o la [calidad del mismo]

Examples:
| usuario | historial de informes de patrones de sueño | informes anteriores | tendencias                    |
| Jhosep  | historial de informes                      | informes mensuales  | cambios en duración y calidad |
| Fátima  | historial de informes                      | informes semanales  | cambios en duración y calidad |