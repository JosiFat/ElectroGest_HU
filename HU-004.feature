Feature: HU-004 - Como usuario, quiero recibir alertas sobre posibles problemas de sueño, como el insomnio, para poder tomar medidas proactivas.

Scenario: ES01 - Recibir alerta por insomnio
TA01
Given que el [usuario] ha configurado el [seguimiento del sueño] en la [aplicación]
And el sistema detecta [menos de 4 horas de sueño continuo] en [3 noches consecutivas]
When el sistema detecta [menos de 4 horas de sueño continuo] en [3 noches consecutivas]
Then el [usuario] recibe una [alerta] indicando un posible problema de [insomnio]

Examples:
| usuario | seguimiento del sueño | aplicación         | menos de 4 horas de sueño continuo |
| Jhosep  | activado              | aplicación móvil   | lunes, martes, miércoles           |
| Fátima  | activado              | aplicación móvil   | jueves, viernes, sábado            |

Scenario: ES02 - Recibir alerta por problemas de sueño debido a despertares frecuentes
TA02
Given que el [usuario] ha activado la [monitorización del sueño] en la [aplicación]
And el sistema detecta [más de 5 despertares por noche] durante [una semana]
When el sistema detecta [más de 5 despertares por noche] durante [una semana]
Then el [usuario] recibe una [alerta] indicando posibles [problemas de sueño]

Examples:
| usuario | monitorización del sueño | aplicación        | más de 5 despertares por noche |
| Jhosep  | activado                 | aplicación móvil  | lunes a domingo               |
| Fátima  | activado                 | aplicación móvil  | martes a lunes                |

Scenario: ES03 - Recibir alerta por baja eficiencia del sueño
TA03
Given que el [usuario] está utilizando la [aplicación] para [monitorear su sueño]
And la [eficiencia del sueño] es [menor al 75%] en [más de 5 noches en un período de 2 semanas]
When la [eficiencia del sueño] es [menor al 75%] en [más de 5 noches en un período de 2 semanas]
Then el [usuario] recibe una [alerta] sugiriendo un posible [trastorno del sueño]

Examples:
| usuario | aplicación        | eficiencia del sueño | menor al 75% | más de 5 noches en 2 semanas |
| Jhosep  | aplicación móvil  | 70%                  | sí           | lunes, miércoles, viernes, sábado, domingo |
| Fátima  | aplicación móvil  | 68%                  | sí           | martes, jueves, sábado, lunes, martes       |

Scenario: ES04 - Recibir alerta por variación en el horario de sueño
TA04
Given que el [usuario] está registrando su [horario de sueño] en la [aplicación]
And el sistema detecta una [variación de más de 2 horas en la hora de acostarse o levantarse] en [más de 4 días en una semana]
When el sistema detecta una [variación de más de 2 horas en la hora de acostarse o levantarse] en [más de 4 días en una semana]
Then el [usuario] recibe una [alerta] recomendando un [horario de sueño más regular]

Examples:
| usuario | aplicación        | horario de sueño     | variación de más de 2 horas | más de 4 días en una semana |
| Jhosep  | aplicación móvil  | registrado           | sí                          | lunes, miércoles, viernes, domingo, martes |
| Fátima  | aplicación móvil  | registrado           | sí                          | lunes, martes, jueves, sábado, lunes       |

Scenario: ES05 - Recibir alerta por mala calidad de sueño reportada
TA05
Given que el [usuario] tiene la opción de [reportar su calidad de sueño] en la [aplicación]
And el [usuario] reporta una [calidad de sueño "mala" o "muy mala"] en [más de 3 noches en una semana]
When el [usuario] reporta una [calidad de sueño "mala" o "muy mala"] en [más de 3 noches en una semana]
Then el [usuario] recibe una [alerta] indicando la necesidad de [posibles medidas para mejorar la calidad del sueño]

Examples:
| usuario | aplicación        | reportar calidad de sueño | calidad de sueño "mala" o "muy mala" | más de 3 noches en una semana |
| Jhosep  | aplicación móvil  | activado                  | sí                                   | lunes, martes, miércoles, jueves |
| Fátima  | aplicación móvil  | activado                  | sí                                   | miércoles, jueves, viernes, sábado |