Feature: HU-008 - Como usuario, quiero tener la certeza de que mis datos de sueño se manejan con la máxima seguridad para proteger mi privacidad.

Scenario: ES01 - Encriptación de datos de sueño
TA01
Given que el [usuario] ha registrado sus [datos de sueño] en la aplicación
When los [datos] se almacenan en la [base de datos]
Then los datos deben estar [encriptados] utilizando [AES-256].

Examples:
| usuario  | datos de sueño                           | base de datos |
| Jhosep   | Datos de sueño del 2023-05-01 al 2023-05-15 | base1         |
| Fátima   | Datos de sueño del 2023-06-10 al 2023-06-25 | base2         |

Scenario: ES02 - Protección mediante autenticación de dos factores (2FA)
TA02
Given que el [usuario] ha registrado sus [datos de sueño] en la aplicación
When alguien intenta acceder a los [datos de sueño del usuario]
Then el acceso debe estar protegido mediante [autenticación de dos factores (2FA)].

Examples:
| usuario  | datos de sueño                           |
| Jhosep   | Datos de sueño del 2023-05-01 al 2023-05-15 |
| Fátima   | Datos de sueño del 2023-06-10 al 2023-06-25 |

Scenario: ES03 - Política de privacidad clara y accesible
TA03
Given que el [usuario] está utilizando la aplicación
When el usuario registra sus [datos de sueño]
Then la aplicación debe proporcionar una [política de privacidad clara y accesible] que explique cómo se manejarán y protegerán los [datos del usuario].

Examples:
| usuario  | datos de sueño                              |
| Jhosep   | Datos de sueño del 2023-05-01 al 2023-05-15 |
| Fátima   | Datos de sueño del 2023-06-10 al 2023-06-25 |

Scenario: ES04 - Eliminación completa y permanente de datos
TA04
Given que el [usuario] ha registrado sus [datos de sueño] en la aplicación
When el usuario decide eliminar su [cuenta]
Then la aplicación debe permitir la [eliminación completa y permanente] de todos los [datos de sueño] del usuario.

Examples:
| usuario  | datos de sueño                              |
| Jhosep   | Datos de sueño del 2023-05-01 al 2023-05-15 |
| Fátima   | Datos de sueño del 2023-06-10 al 2023-06-25 |

Scenario: ES05 - Notificación de cambios en políticas de privacidad o brechas de seguridad
TA05
Given que el [usuario] ha registrado sus [datos de sueño] en la aplicación
When hay [cambios en las políticas de privacidad] o se detecta una [posible brecha de seguridad]
Then la aplicación debe [notificar] al usuario de inmediato y proporcionar instrucciones sobre cómo [proteger sus datos].

Examples:
| usuario  | cambios en las políticas de privacidad | posible brecha de seguridad |
| Jhosep   | sí                                     | no                          |
| Fátima   | no                                     | sí                          |