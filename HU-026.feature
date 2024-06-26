Feature: HU-026 - Como usuario, quiero acceder a ejercicios de meditación guiada para relajarme antes de dormir y mejorar la calidad de mi sueño.

Scenario: ES01 - Acceso a la biblioteca de meditaciones guiadas
TA01
Given que el [usuario] accede a la sección de [meditación guiada] en la [aplicación]
And el [usuario] busca [ejercicios de meditación disponibles]
When el [usuario] busca los ejercicios
Then la [aplicación] muestra una [biblioteca de meditaciones guiadas] disponibles para su [reproducción].

Examples:
| usuario  | meditación guiada | ejercicios de meditación disponibles | biblioteca de meditaciones guiadas |
| Jhosep   | sí                | sí                                   | sí                                |
| Fátima   | sí                | sí                                   | sí                                |

Scenario: ES02 - Reproducción de una meditación guiada específica
TA02
Given que el [usuario] elige una [meditación guiada] de la [biblioteca]
And el [usuario] selecciona una [meditación específica] para [reproducir]
When el [usuario] selecciona la meditación
Then la [aplicación] reproduce la [meditación guiada], proporcionando [instrucciones verbales] y [guía] para ayudar al [usuario] a [relajarse] antes de dormir.

Examples:
| usuario  | meditación guiada | biblioteca | meditación específica | reproducción | instrucciones verbales | guía    | relajarse |
| Jhosep   | sí                | sí        | meditación1           | sí          | sí                    | sí      | sí        |
| Fátima   | sí                | sí        | meditación2           | sí          | no                    | sí      | sí        |

Scenario: ES03 - Personalización de la experiencia de meditación guiada
TA03
Given que el [usuario] está reproduciendo una [meditación guiada]
And el [usuario] desea ajustar la [duración] o [configuración] de la meditación (como [música de fondo] o [voz del instructor])
When el [usuario] desea hacer ajustes
Then la [aplicación] permite al [usuario] [personalizar] la [experiencia de meditación] según sus [preferencias].

Examples:
| usuario  | reproduciendo meditación guiada | duración | configuración | música de fondo | voz del instructor | personalizar | experiencia de meditación | preferencias |
| Jhosep   | sí                              | sí       | sí            | sí              | sí                 | sí           | sí                        | sí           |
| Fátima   | sí                              | sí       | sí            | no              | sí                 | sí           | sí                        | sí           |