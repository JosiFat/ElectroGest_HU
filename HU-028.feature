Feature: HU-028 - Como usuario, quiero activar un modo de sueño que ajuste automáticamente las configuraciones de mi dispositivo móvil para minimizar interrupciones durante la noche.

Scenario: ES01 - Activación del modo de sueño
TA01
Given que el [usuario] ha configurado el [modo de sueño] en la [aplicación]
And el [usuario] activa el [modo de sueño] antes de irse a [dormir]
When el [usuario] activa el modo de sueño
Then la [aplicación] ajusta automáticamente las [configuraciones del dispositivo móvil] para minimizar interrupciones durante la noche, como [silenciar notificaciones], [reducir el brillo de la pantalla] y [desactivar sonidos de alarma].

Examples:
| usuario  | modo de sueño | dormir | configuraciones del dispositivo móvil | silenciar notificaciones | reducir brillo de pantalla | desactivar sonidos de alarma |
| Jhosep   | sí            | sí     | sí                                  | sí                      | sí                        | no                           |
| Fátima   | sí            | sí     | sí                                  | no                      | sí                        | sí                           |

Scenario: ES02 - Desactivación automática del modo de sueño
TA02
Given que ha pasado el tiempo programado para el [modo de sueño]
And el [usuario] despierta por la [mañana]
When el [usuario] despierta
Then la [aplicación] desactiva automáticamente el [modo de sueño] y restaura las [configuraciones originales] del [dispositivo móvil].

Examples:
| usuario  | modo de sueño | tiempo programado | mañana | configuraciones originales |
| Jhosep   | sí            | sí                | sí     | sí                        |
| Fátima   | sí            | no                | sí     | sí                        |