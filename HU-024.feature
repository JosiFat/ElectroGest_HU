Feature: HU-024 - Como usuario, quiero registrar mi estado de ánimo diario para correlacionarlo con la calidad de mi sueño.

Scenario: ES01 - Registro diario de estado de ánimo
TA01
Given que el [usuario] accede a la función de [registro de estado de ánimo] en la [aplicación]
And el [usuario] selecciona la opción para [registrar su estado de ánimo] para el [día actual]
When el [usuario] selecciona la opción
Then la [aplicación] permite al [usuario] elegir entre diferentes [opciones de estado de ánimo] (por ejemplo, feliz, triste, estresado, relajado, etc.) y registrar su [elección].

Examples:
| usuario  | registro de estado de ánimo | día actual | opciones de estado de ánimo        | elección  |
| Jhosep   | sí                          | sí         | feliz, triste, estresado, relajado | feliz     |
| Fátima   | sí                          | sí         | feliz, triste, estresado, relajado | estresado |

Scenario: ES02 - Visualización del historial de estados de ánimo
TA02
Given que el [usuario] ha registrado su [estado de ánimo] en [días anteriores]
And el [usuario] accede a la [sección de historial de estado de ánimo] en la [aplicación]
When el [usuario] accede a la [sección de historial]
Then la [aplicación] muestra un [registro histórico] de los [estados de ánimo] registrados, permitiendo al [usuario] ver cómo ha [variado su estado de ánimo] con el tiempo.

Examples:
| usuario  | estado de ánimo | días anteriores | sección de historial de estado de ánimo | registro histórico                          | variado su estado de ánimo |
| Jhosep   | feliz           | sí              | historial                               | 2023-06-21: feliz, 2023-06-22: triste       | sí                         |
| Fátima   | estresado       | sí              | historial                               | 2023-06-21: relajado, 2023-06-22: estresado | sí                         |

Scenario: ES03 - Análisis y correlación del estado de ánimo con la calidad del sueño
TA03
Given que el [usuario] ha registrado su [estado de ánimo] y [datos de sueño] en la [aplicación]
And el [usuario] accede a la [función de análisis] en la [aplicación]
When el [usuario] accede a la [función de análisis]
Then la [aplicación] proporciona [herramientas] para [analizar y correlacionar] el [estado de ánimo] del [usuario] con la [calidad de su sueño], mostrando posibles [patrones] o [relaciones] entre ambos.

Examples:
| usuario  | estado de ánimo | datos de sueño | función de análisis | herramientas                  | patrones                  | relaciones               |
| Jhosep   | feliz           | sí             | análisis            | gráficos, reportes            | mejor estado de ánimo     | mejor calidad de sueño   |
| Fátima   | estresado       | sí             | análisis            | estadísticas, comparativas    | estado de ánimo estresado | peor calidad de sueño    |