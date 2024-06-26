Feature: HU-003 - Como usuario, quiero que la aplicación analice mis datos de sueño para obtener insights detallados y recomendaciones sobre cómo mejorar mi descanso.

Scenario: ES01 - Analizar patrones de sueño utilizando algoritmos de análisis inteligente
TA01
Given que el [usuario] ha iniciado sesión en la [aplicación] correctamente
And la [aplicación] recopila y procesa los [datos de sueño del usuario]
When la [aplicación] recopila y procesa los [datos de sueño]
Then se utilizan [algoritmos de análisis inteligente] para analizar los [patrones de sueño del usuario]

Examples:
| usuario  | aplicación      | datos de sueño             | algoritmos de análisis            |
| Jhosep   | aplicación móvil| datos de sueño de 7 días   | análisis inteligente de patrones  |
| Fátima   | aplicación móvil| datos de sueño de 30 días  | análisis inteligente de patrones  |

Scenario: ES02 - Generar insights detallados sobre los patrones de sueño
TA02
Given que la [aplicación] ha analizado los [datos de sueño del usuario]
And se identifican [tendencias], [anomalías] y [factores] que afectan la [calidad del sueño]
When la [aplicación] identifica [tendencias], [anomalías] y [factores]
Then se generan [insights detallados] sobre los [patrones de sueño del usuario]

Examples:
| usuario  | datos de sueño             | tendencias       | anomalías              | factores              | insights detallados                      |
| Jhosep   | datos de sueño de 7 días   | patrón irregular | despertares frecuentes | temperatura elevada   | recomendaciones para horarios regulares  |
| Fátima   | datos de sueño de 30 días  | patrón constante | pocos despertares      | ruido ambiental       | mantener hábitos actuales, reducir ruido |

Scenario: ES03 - Formular y presentar recomendaciones personalizadas
TA03
Given que la [aplicación] ha obtenido [insights] sobre los [patrones de sueño del usuario]
And se formulan [recomendaciones personalizadas] para mejorar el [descanso del usuario]
When la [aplicación] formula [recomendaciones personalizadas]
Then se presentan las [recomendaciones] de manera [clara y comprensible]

Examples:
| usuario  | insights                             | recomendaciones                  |
| Jhosep   | problemas de despertares frecuentes  | reducir cafeína antes de dormir  |
| Fátima   | buen patrón de sueño                 | continuar con la rutina actual   |

Scenario: ES04 - Visualizar insights y recomendaciones desde la interfaz principal
TA04
Given que el [usuario] desea acceder a los [insights] y [recomendaciones] sobre su [sueño]
And el [usuario] accede a la [sección dedicada al análisis de sueño] en la [aplicación]
When el [usuario] accede a la [sección dedicada al análisis de sueño]
Then el [usuario] puede [visualizar fácilmente] los [insights] y [recomendaciones] desde la [interfaz principal]

Examples:
| usuario  | sección dedicada al análisis de sueño | insights y recomendaciones    |
| Jhosep   | sección de análisis                   | mejoras sugeridas visibles    |
| Fátima   | sección de análisis                   | resumen de calidad del sueño  |





