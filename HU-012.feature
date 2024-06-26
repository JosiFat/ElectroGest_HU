Feature: HU-012 - Como usuario, quiero tener acceso a una biblioteca de sonidos relajantes, como el sonido de la lluvia, el mar o la naturaleza, para reproducirlos mientras me preparo para dormir, ayudándome a relajarme y conciliar el sueño más fácilmente.

Scenario: ES01 - Mostrar lista de sonidos relajantes disponibles
TA01
Given que el [usuario] desea acceder a la [biblioteca de sonidos relajantes]
When el usuario navega a la [función de biblioteca de sonidos] en la aplicación
Then la aplicación muestra al usuario una [lista de sonidos relajantes] disponibles para reproducir.

Examples:
| usuario  | biblioteca de sonidos relajantes | lista de sonidos relajantes disponibles |
| Jhosep   | Sí                               | Sí                                      |
| Fátima   | Sí                               | Sí                                      |

Scenario: ES02 - Reproducción de sonido relajante seleccionado
TA02
Given que el [usuario] ha seleccionado un [sonido relajante] para reproducir
When el usuario elige un [sonido] de la lista y lo [reproduce]
Then la aplicación reproduce el [sonido seleccionado] con la opción de [ajustar el volumen] y [detener la reproducción] según las preferencias del usuario.

Examples:
| usuario  | sonido relajante seleccionado | reproducción del sonido seleccionado | ajuste de volumen | detención de reproducción |
| Jhosep   | Sonido de lluvia              | Sí                                   | Sí                | Sí                        |
| Fátima   | Sonido del mar                | Sí                                   | Sí                | Sí                        |

Scenario: ES03 - Personalización de parámetros de sonido relajante
TA03
Given que el [usuario] está reproduciendo un [sonido relajante]
When el usuario accede a las [opciones de personalización de sonido]
Then la aplicación permite al usuario [ajustar parámetros] como el [volumen], la [duración] y la [repetición del sonido] para adaptarlo a sus necesidades y preferencias individuales.

Examples:
| usuario  | sonido relajante | opciones de personalización de sonido  | ajuste de volumen | ajuste de duración | repetición del sonido |
| Jhosep   | Sonido de lluvia | Sí                                     | Sí                | Sí                 | Sí                    |
| Fátima   | Sonido del mar   | Sí                                     | Sí                | Sí                 | Sí                    |