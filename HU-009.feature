Feature: HU-009 - Como usuario, quiero poder controlar qué datos personales comparto con la aplicación para sentirme seguro y confiado al usarla.

Scenario: ES01 - Opciones claras para seleccionar datos personales compartidos
TA01
Given que el [usuario] está utilizando la aplicación
When el usuario accede a la [configuración de privacidad]
Then la aplicación debe proporcionar [opciones] claras para seleccionar qué [tipos de datos personales] (como nombre, edad, ubicación) se comparten.

Examples:
| usuario | configuración de privacidad   | opciones | tipos de datos personales |
| Jhosep  | Acceso a privacidad principal | Sí       | Nombre, Edad, Ubicación   |
| Fátima  | Ajustes de privacidad rápidos | Sí       | Nombre, Edad              |

Scenario: ES02 - Consentimiento explícito para compartir datos personales
TA02
Given que el [usuario] está utilizando la aplicación
When la aplicación solicita acceso a [datos personales]
Then el usuario debe dar su [consentimiento explícito] para cada [tipo de dato] antes de que se compartan.

Examples:
| usuario | datos personales solicitados | consentimiento explícito | tipo de dato       |
| Jhosep  | Nombre, Edad                 | Sí                       | Nombre, Edad       |
| Fátima  | Ubicación, Email             | No                       | Ubicación, Email   |

Scenario: ES03 - Modificación de permisos de datos compartidos
TA03
Given que el [usuario] ha configurado sus [preferencias de privacidad]
When el usuario desea revisar o modificar los [permisos de datos] otorgados
Then la aplicación debe permitir al usuario cambiar los [permisos de datos] compartidos en cualquier momento.

Examples:
| usuario | preferencias de privacidad configuradas | permisos de datos | permisos modificados |
| Jhosep  | Sí                                      | Nombre, Edad      | Edad                 |
| Fátima  | Sí                                      | Ubicación, Email  | Ubicación, Email     |

Scenario: ES04 - Información detallada sobre uso y protección de datos personales
TA04
Given que el [usuario] está utilizando la aplicación
When el usuario accede a la [sección de privacidad]
Then la aplicación debe proporcionar [información detallada] sobre cómo se utilizan y protegen los [datos personales].

Examples:
| usuario | sección de privacidad  | información detallada | datos personales       |
| Jhosep  | Política de Privacidad | Sí                    | Nombre, Edad, Ubicación|
| Fátima  | Preguntas Frecuentes   | Sí                    | Nombre, Ubicación      |

Scenario: ES05 - Eliminación selectiva y permanente de datos personales
TA05
Given que el [usuario] ha compartido [datos personales] con la aplicación
When el usuario decide eliminar [datos específicos]
Then la aplicación debe permitir al usuario eliminar esos [datos] de manera selectiva y [permanente].

Examples:
| usuario | datos personales compartidos   | datos específicos a eliminar | eliminación permanente |
| Jhosep  | Nombre, Edad, Ubicación        | Edad, Ubicación              | Sí                     |
| Fátima  | Nombre, Email                  | Email                        | Sí                     |