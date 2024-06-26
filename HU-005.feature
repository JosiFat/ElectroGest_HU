Feature: HU-005 - Como usuario, quiero que la aplicación proponga ajustes en mis hábitos de vida para optimizar mi sueño y bienestar general.

Scenario: ES01 - Sugerir reducción del uso de dispositivos electrónicos
TA01
Given que el [usuario] ha registrado su [tiempo de uso de dispositivos electrónicos] en la [aplicación]
And el [tiempo de uso de dispositivos electrónicos] antes de dormir supera las [2 horas por noche]
When el [tiempo de uso de dispositivos electrónicos] antes de dormir supera las [2 horas por noche]
Then la [aplicación] sugiere [reducir el uso de dispositivos electrónicos] al menos [1 hora antes de dormir] para mejorar la calidad del sueño

Examples:
| usuario | tiempo de uso de dispositivos electrónicos | aplicación         | más de 2 horas por noche |
| Jhosep  | 3 horas antes de dormir                    | aplicación móvil   | sí                       |
| Fátima  | 2.5 horas antes de dormir                  | aplicación móvil   | sí                       |

Scenario: ES02 - Sugerir establecer un horario de sueño regular
TA02
Given que el [usuario] ha registrado su [horario de acostarse y levantarse] en la [aplicación]
And el sistema detecta una [inconsistencia en los horarios de sueño], con [variaciones de más de 2 horas] en el tiempo de acostarse o levantarse en [más de 3 días en una semana]
When el sistema detecta una [inconsistencia en los horarios de sueño]
Then la [aplicación] sugiere [establecer un horario de sueño regular], recomendando [horarios consistentes para acostarse y levantarse]

Examples:
| usuario | horario de acostarse y levantarse | aplicación        | variaciones de más de 2 horas | más de 3 días en una semana |
| Jhosep  | 10:00 PM - 6:00 AM, 12:00 AM - 8:00 AM, 11:00 PM - 7:00 AM | aplicación móvil | sí | sí |
| Fátima  | 11:00 PM - 7:00 AM, 1:00 AM - 9:00 AM, 10:30 PM - 6:30 AM | aplicación móvil | sí | sí |

Scenario: ES03 - Sugerir aumento de actividad física
TA03
Given que el [usuario] ha registrado su [nivel de actividad física] en la [aplicación]
And el sistema detecta [menos de 30 minutos de actividad física] en [más de 5 días en una semana]
When el sistema detecta [menos de 30 minutos de actividad física] en [más de 5 días en una semana]
Then la [aplicación] sugiere [aumentar la actividad física] a al menos [30 minutos diarios] para mejorar la calidad del sueño

Examples:
| usuario | nivel de actividad física | aplicación         | menos de 30 minutos de actividad física | más de 5 días en una semana |
| Jhosep  | 20 minutos                | aplicación móvil   | sí                                      | sí                          |
| Fátima  | 15 minutos                | aplicación móvil   | sí                                      | sí                          |

Scenario: ES04 - Sugerir evitar la cafeína y comidas pesadas antes de dormir
TA04
Given que el [usuario] ha registrado su [consumo de alimentos y bebidas] en la [aplicación]
And el sistema detecta [consumo de cafeína o comidas pesadas dentro de las 3 horas antes de dormir] en [más de 3 noches en una semana]
When el sistema detecta [consumo de cafeína o comidas pesadas dentro de las 3 horas antes de dormir] en [más de 3 noches en una semana]
Then la [aplicación] sugiere [evitar la cafeína y las comidas pesadas] al menos [3 horas antes de dormir]

Examples:
| usuario | consumo de alimentos y bebidas   | aplicación         | cafeína o comidas pesadas dentro de 3 horas antes de dormir | más de 3 noches en una semana |
| Jhosep  | café y comida pesada a las 10 PM | aplicación móvil   | sí                                                          | sí                            |
| Fátima  | té y comida pesada a las 9:30 PM | aplicación móvil   | sí                                                          | sí                            |