Feature: HU-014 - Como usuario, quiero recibir notificaciones de seguimiento y consejos durante el día para mantenerme enfocado en mejorar mi calidad de sueño.

Scenario: ES01 - Envío de notificaciones sobre la calidad del sueño y consejos
TA01
Given que el [usuario] está utilizando la [aplicación de seguimiento del sueño]
And se detectan [patrones relevantes] en los [datos de sueño] del usuario
When se identifica una [disminución en la calidad del sueño] o cambios en los [ciclos de sueño]
Then la aplicación envía [notificaciones] al usuario durante el día para informarle sobre estos patrones y ofrecer [consejos] para mejorar su [calidad de sueño].

Examples:
| usuario  | aplicación de seguimiento del sueño | patrones relevantes detectados | disminución en la calidad del sueño | cambios en los ciclos de sueño | notificaciones enviadas  | consejos ofrecidos                         |
| Jhosep   | Sí                                  | Sí                             | Sí                                  | Sí                             | Sí                       | Mantén una rutina de sueño                 |
| Fátima   | Sí                                  | Sí                             | No                                  | Sí                             | Sí                       | Evita el uso de pantallas antes de dormir  |
| CARLOS   | Sí                                  | Sí                             | Sí                                  | No                             | Sí                       | Practica técnicas de relajación            |
| MARÍA    | Sí                                  | No                             | Sí                                  | Sí                             | Sí                       | Ajusta tu horario de sueño                 |

Scenario: ES02 - Provisión de consejos personalizados basados en patrones de sueño
TA02
Given que el [usuario] está recibiendo [notificaciones de seguimiento]
And el usuario interactúa con una [notificación] para obtener más detalles o consejos
When el usuario solicita [consejos adicionales]
Then la aplicación proporciona [consejos personalizados] basados en los [patrones de sueño] específicos del usuario.

Examples:
| usuario  | notificaciones de seguimiento recibidas | interacción con notificación | solicitud de consejos adicionales | consejos personalizados                      |
| Jhosep   | Sí                                      | Sí                           | S í                               | Realiza ejercicio moderado                   |
| Fátima   | Sí                                      | Sí                           | S í                               | Mantén un ambiente de sueño oscuro y fresco  |
| CARLOS   | Sí                                      | Sí                           | S í                               | Limita el consumo de cafeína                 |
| MARÍA    | Sí                                      | Sí                           | S í                               | Ajusta tus horarios de comida                |