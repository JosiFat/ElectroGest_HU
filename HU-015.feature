Feature: HU-015 - Como usuario, quiero una interfaz de usuario intuitiva y fácil de usar para poder navegar por la aplicación de manera eficiente y sin confusiones.

Scenario: ES01 - Navegación clara y sencilla sin instrucciones adicionales
TA01
Given que un [usuario] abre la [aplicación] por primera vez
And el [usuario] explora las [diferentes secciones] y [funcionalidades]
Then el [usuario] puede identificar claramente la [navegación] y moverse por la [aplicación] sin necesidad de [instrucciones adicionales].

Examples:
| usuario  | aplicación abierta | diferentes secciones exploradas | navegación clara y sencilla |
| Jhosep   | Sí                 | Sí                              | Sí                          |
| Fátima   | Sí                 | Sí                              | Sí                          |
 
Scenario: ES02 - Diseño de interfaz de usuario coherente
TA02
Given que un [usuario] interactúa con [diferentes pantallas] y [elementos] de la aplicación
And el [usuario] observa los [diseños] de las [diferentes pantallas] y [funcionalidades]
Then el diseño de la [interfaz de usuario] es coherente en términos de [diseño visual], [disposición de elementos] y [esquema de colores].

Examples:
| usuario  | diferentes pantallas observadas | diseño coherente visualmente |
| Jhosep   | Sí                              | Sí                           |
| Fátima   | Sí                              | Sí                           |

Scenario: ES03 - Feedback inmediato sobre acciones realizadas
TA03
Given que un [usuario] realiza una [acción] dentro de la aplicación
And el [usuario] espera una [respuesta] o [confirmación] de la acción realizada
Then la [aplicación] proporciona un [feedback inmediato] para indicar que la [acción se ha completado correctamente] o si se requiere alguna [acción adicional].

Examples:
| usuario  | acción realizada      | respuesta esperada | feedback inmediato proporcionado |
| Jhosep   | Guardar configuración | Sí                 | Sí                               |
| Fátima   | Enviar reporte        | Sí                 | Sí                               |

Scenario: ES04 - Experiencia de usuario óptima en todos los dispositivos
TA04
Given que un [usuario] accede a la [aplicación] desde [diferentes dispositivos]
And el [usuario] utiliza la aplicación en [diferentes tamaños de pantalla] y dispositivos
Then la [aplicación] se adapta de manera [receptiva] y ofrece una [experiencia de usuario óptima] en todos los [dispositivos].

Examples:
| usuario  | diferentes dispositivos | diferentes tamaños de pantalla | experiencia de usuario óptima |
| Jhosep   | Teléfono y Tablet       | Pequeño y Mediano              | Sí                            |
| Fátima   | Teléfono y Laptop       | Pequeño y Grande               | Sí                            |