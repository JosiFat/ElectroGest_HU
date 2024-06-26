Feature: HU-011 - Como usuario, quiero configurar metas de sueño y recibir recordatorios para ayudarme a mantener hábitos de sueño saludables.

Scenario: ES01 - Configuración de metas de duración de sueño
TA01
Given que el [usuario] accede a la [sección de configuración de metas de sueño] en la aplicación
And el usuario establece una [meta de duración de sueño deseada]
When el usuario establece una [meta de sueño]
Then la aplicación permite al usuario ingresar la [cantidad de horas de sueño] que desea lograr cada noche.
And la aplicación valida que la [meta de sueño] sea [razonable].

Examples:
| usuario  | sección de configuración de metas de sueño | meta de duración de sueño deseada | cantidad de horas de sueño | meta de sueño razonable |
| Jhosep   | Sí                                         | Sí                                | 8 horas                    | Sí                      |
| Fátima   | Sí                                         | Sí                                | 6 horas                    | Sí                      |

Scenario: ES02 - Configuración de recordatorios para hábitos de sueño saludables
TA02
Given que el [usuario] accede a la [sección de configuración de recordatorios] en la aplicación
And el usuario desea configurar [recordatorios para mantener hábitos de sueño saludables]
When el usuario configura [recordatorios]
Then la aplicación permite al usuario programar [recordatorios diarios] para irse a dormir y despertarse a una hora específica.
And el usuario puede seleccionar la [hora] y la [frecuencia] de los [recordatorios].

Examples:
| usuario  | sección de configuración de recordatorios | recordatorios para hábitos de sueño saludables | hora  | frecuencia |
| Jhosep   | Sí                                        | Sí                                             | 22:00 | Diario     |
| Fátima   | Sí                                        | Sí                                             | 23:00 | Diario     |

Scenario: ES03 - Visualización del progreso hacia las metas de sueño
TA03
Given que el [usuario] ha establecido [metas de sueño] en la aplicación
And el usuario accede a la [sección de visualización de metas] o al [panel de resumen de sueño]
When el usuario accede a la [sección de visualización de metas] o al [panel de resumen de sueño]
Then la aplicación muestra el [progreso del usuario] hacia sus [metas de sueño], incluyendo la [cantidad de horas de sueño registradas] cada noche y si se [cumplieron las metas establecidas].

Examples:
| usuario  | metas de sueño establecidas | sección de visualización de metas | panel de resumen de sueño | progreso del usuario | cantidad de horas de sueño registradas | metas cumplidas |
| Jhosep   | Sí                          | Sí                                | Sí                        | Sí                   | 7.5 horas                              | No              |
| Fátima   | Sí                          | Sí                                | Sí                        | Sí                   | 8 horas                                | Sí              |

Scenario: ES04 - Envío de notificaciones de recordatorio
TA04
Given que el [usuario] ha configurado [recordatorios] en la aplicación
And llegue la [hora programada] para un [recordatorio]
When llegue la [hora programada] para un [recordatorio]
Then la aplicación envía una [notificación] al usuario recordándole [irse a dormir o despertarse] según la [configuración establecida].

Examples:
| usuario  | recordatorios configurados | hora programada | notificación de recordatorio | acción sugerida |
| Jhosep   | Sí                         | 22:00           | Sí                           | Irse a dormir   |
| Fátima   | Sí                         | 06:00           | Sí                           | Despertarse     |