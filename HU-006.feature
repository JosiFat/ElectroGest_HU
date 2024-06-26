Feature: HU-006 - Como usuario, quiero registrar condiciones ambientales como temperatura, ruido y luminosidad 
para correlacionar estos factores con mi calidad de sueño.

Scenario: ES01 - Registrar temperatura ambiente
TA01
Given que el [usuario] tiene acceso a un [sensor de temperatura] o puede [ingresar manualmente los datos] en la [aplicación]
And el [usuario] va a dormir
When el [usuario] va a dormir
Then la [aplicación] permite al [usuario] [registrar la temperatura ambiente] en [grados Celsius o Fahrenheit]

Examples:
| usuario | sensor de temperatura | grados     |
| Jhosep  | Sí                    | Celsius    |
| Fátima  | No                    | Fahrenheit |

Scenario: ES02 - Registrar nivel de ruido
TA02
Given que el [usuario] tiene acceso a un [sensor de ruido] o puede [ingresar manualmente los datos] en la [aplicación]
And el [usuario] va a dormir
When el [usuario] va a dormir
Then la [aplicación] permite al [usuario] [registrar el nivel de ruido] en [decibelios (dB)]

Examples:
| usuario | sensor de ruido | decibelios |
| Jhosep  | No              | 45 dB      |
| Fátima  | Sí              | 40 dB      |

Scenario: ES03 - Registrar nivel de luminosidad
TA03
Given que el [usuario] tiene acceso a un [sensor de luz] o puede [ingresar manualmente los datos] en la [aplicación]
And el [usuario] va a dormir
When el [usuario] va a dormir
Then la [aplicación] permite al [usuario] [registrar el nivel de luminosidad] en [lux]

Examples:
| usuario | sensor de luz | lux  |
| Jhosep  | No            | 150  |
| Fátima  | Sí            | 100  |

Scenario: ES04 - Visualizar datos ambientales y calidad del sueño
TA04
Given que el [usuario] ha registrado [datos ambientales] como [temperatura, ruido y luminosidad]
And el [usuario] revisa su [historial de sueño]
When el [usuario] revisa su [historial de sueño]
Then la [aplicación] muestra los [datos ambientales registrados] junto con la [calidad del sueño] para [análisis y correlación]

Examples:
| usuario | datos ambientales registrados           | calidad del sueño |
| Jhosep  | Temp: 22°C, Ruido: 45 dB, Luz: 150 lux  | Buena             |
| Fátima  | Temp: 72°F, Ruido: 40 dB, Luz: 100 lux  | Regular           |