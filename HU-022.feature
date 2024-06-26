Feature: HU-022 - Como usuario, quiero poder compartir mis datos de sueño con mi médico para recibir asesoramiento profesional y mejorar mi salud.

Scenario: ES01 - Selección de registros de sueño para compartir
TA01
Given que el [usuario] desea compartir [datos de sueño] con su [médico]
And el [usuario] accede a la función de [compartir datos] en la [aplicación]
When el [usuario] accede a la [función de compartir datos]
Then la [aplicación] permite al [usuario] seleccionar los [registros de sueño específicos] que desea compartir con su [médico].

Examples:
| usuario  | datos de sueño | médico       | función de compartir datos | registros de sueño específicos |
| Jhosep   | sí             | Dr. Pérez    | menú de compartir          | 2023-06-21, 2023-06-22         |
| Fátima   | sí             | Dra. García  | sección de compartir       | 2023-06-21, 2023-06-22, 2023-06-23 |

Scenario: ES02 - Envío de datos de sueño al médico a través de un medio seguro
TA02
Given que el [usuario] ha seleccionado los [registros de sueño] para compartir
And el [usuario] elige la opción para [enviar los datos] a su [médico]
When el [usuario] elige la [opción de enviar]
Then la [aplicación] facilita el [envío de los datos de sueño] al [médico del usuario] a través de un [medio seguro], como [correo electrónico] o [mensajería segura].

Examples:
| usuario  | registros de sueño     | opción de enviar | médico      | medio seguro | correo electrónico   | mensajería segura  |
| Jhosep   | 2023-06-21, 2023-06-22 | enviar           | Dr. Pérez   | sí           | dr.perez@example.com |                    |
| Fátima   | 2023-06-21, 2023-06-22 | enviar           | Dra. García | sí           |                      | mensajería segura  |