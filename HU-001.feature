Feature: HU-001 - Como usuario, quiero monitorear mis ciclos y fases del sueño para entender mejor mis patrones de descanso nocturno.

Scenario: ES01 - Mostrar opciones de configuración de seguimiento del sueño
TA01
Given que el [usuario] ha iniciado sesión en la [aplicación] correctamente
And el [usuario] se encuentra en la [sección de configuración de seguimiento del sueño]
When el [usuario] selecciona la opción de [configuración de seguimiento del sueño]
Then el sistema muestra las [opciones] para activar el [seguimiento automático] o [manual] de los [ciclos y fases del sueño]
And el [usuario] puede seleccionar sus [preferencias de seguimiento]

Examples:
| Usuario | configuración de seguimiento del sueño |
| Jhosep  | Seguimiento automático                 |
| Fátima  | Manual                                 |

Scenario: ES02 - Iniciar seguimiento automático del sueño
TA02
Given que el [usuario] ha activado el [seguimiento automático del sueño] en la [configuración]
And el [usuario] tiene el [dispositivo cerca] al irse a dormir
When el [usuario] se duerme
Then el sistema inicia automáticamente el [seguimiento de los ciclos y fases del sueño]
And registra la [información] en la [aplicación]

Examples:
| usuario    | seguimiento automático del sueño | dispositivo cerca |
| Jhosep     | activado                         | sí                |
| Fátima     | desactivado                      | no                |

Scenario: ES03 - Registrar sueño manualmente
TA03
Given que el [usuario] ha activado el [seguimiento manual del sueño] en la [configuración]
And el [usuario] se ha despertado por la mañana
When el [usuario] accede a la [aplicación] para registrar su [sueño]
Then el sistema permite al [usuario] ingresar manualmente la [hora de inicio y fin de su sueño]
And muestra [opciones] para añadir [información adicional] sobre la calidad del sueño

Examples:
| usuario | seguimiento manual del sueño | sueño       | información adicional         |
| Jhosep  | activado                     | manualmente | [Sin información adicional]   |
| Fátima  | desactivado                  | manualmente | Me sentí cansada al despertar |







