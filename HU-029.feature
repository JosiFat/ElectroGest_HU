Feature: HU-029 - Como usuario, quiero activar un modo de ahorro de batería que ajuste automáticamente las configuraciones de mi dispositivo móvil para minimizar el consumo de energía.

Scenario: ES01 - Activación automática del modo de ahorro de batería
TA01
Given que el [usuario] ha configurado el [modo de ahorro de batería] en la [aplicación]
And el nivel de batería del [dispositivo móvil] alcanza un [umbral especificado] (por ejemplo, 20%)
When el nivel de batería alcanza el umbral
Then la [aplicación] activa automáticamente el [modo de ahorro de batería] para ajustar las [configuraciones] y minimizar el [consumo de energía] del dispositivo.

Examples:
| usuario  | modo de ahorro de batería | dispositivo móvil | umbral especificado configuraciones | consumo de energía |
| Jhosep   | sí                        | smartphone        | 20%                  sí             | mínimo             |
| Fátima   | sí                        | teléfono          | 15%                  sí             | mínimo             |

Scenario: ES02 - Desactivación automática del modo de ahorro de batería
TA02
Given que el nivel de batería del [dispositivo móvil] vuelve a ser [suficientemente alto] (por ejemplo, más del 20%)
And el [usuario] desactiva manualmente el [modo de ahorro de batería]
When el usuario desactiva el modo de ahorro de batería
Then la [aplicación] desactiva automáticamente el [modo de ahorro de batería] y restaura las [configuraciones originales] del dispositivo móvil.

Examples:
| usuario  | nivel de batería | suficientemente alto | configuraciones originales |
| Jhosep   | 25%              | sí                   | sí                         |
| Fátima   | 30%              | sí                   | sí                         | 