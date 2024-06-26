Feature: HU-020 - Como usuario, quiero configurar alarmas inteligentes que se adapten a mis ciclos de sueño para despertarme en el momento óptimo.

Scenario: ES01 - Configuración de una hora aproximada para despertarse
TA01
Given que el [usuario] desea configurar una [alarma inteligente]
And el [usuario] accede a la [función de configuración de alarmas] en la [aplicación]
When el [usuario] accede a la [función de configuración de alarmas]
Then la [aplicación] permite al [usuario] establecer una [hora aproximada para despertarse].

Examples:
| usuario  | alarma inteligente  | función de configuración de alarmas | hora aproximada para despertarse  |
| Jhosep   | sí                  | menú de alarmas                     | 06:30                             |
| Fátima   | sí                  | sección de alarmas                  | 07:00                             |

Scenario: ES02 - Ajuste automático de la hora de la alarma para un despertar óptimo
TA02
Given que el [usuario] ha configurado la [alarma inteligente]
And la [aplicación] analiza los [ciclos de sueño] del [usuario] durante la noche
When la [aplicación] analiza los [ciclos de sueño]
Then la [alarma inteligente] ajusta automáticamente la [hora de la alarma] para despertar al [usuario] durante un [periodo de sueño ligero], minimizando la [sensación de grogui] al despertar.

Examples:
| usuario  | alarma inteligente  | ciclos de sueño           | hora de la alarma ajustada | periodo de sueño ligero | sensación de grogui |
| Jhosep   | sí                  | ciclo 1, ciclo 2          | 06:15                      | 06:00 - 06:30           | mínima              |
| Fátima   | sí                  | ciclo 1, ciclo 2, ciclo 3 | 06:45                      | 06:30 - 07:00           | mínima              |

Scenario: ES03 - Mejora de la precisión de las alarmas inteligentes
TA03
Given que el [usuario] ha sido despertado por la [alarma inteligente]
And el [usuario] proporciona [retroalimentación] sobre la [efectividad de la alarma] en despertarlo en el momento óptimo
When el [usuario] proporciona [retroalimentación]
Then la [aplicación] utiliza esta [información] para [mejorar la precisión] de las [alarmas inteligentes] en futuras ocasiones.

Examples:
| usuario  | alarma inteligente | retroalimentación           | efectividad de la alarma | mejora de la precisión |
| Jhosep   | sí                  | "Desperté muy bien"        | alta                     | aumentada              |
| Fátima   | sí                  | "Desperté un poco cansada" | moderada                 | ajustada               |