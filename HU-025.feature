Feature: HU-025 - Como usuario, quiero recibir consejos diarios sobre la higiene del sueño para mejorar mis hábitos y calidad de descanso.

Scenario: ES01 - Recepción de un consejo diario sobre la higiene del sueño
TA01
Given que el [usuario] ha configurado la función de [consejos diarios] en la [aplicación]
And el [usuario] inicia sesión en la [aplicación] cada [día]
When el [usuario] inicia sesión
Then la [aplicación] muestra un [consejo personalizado] sobre la [higiene del sueño] para ese [día].

Examples:
| usuario  | consejos diarios | día   | consejo personalizado |
| Jhosep   | sí               | sí    | sí                    |
| Fátima   | sí               | sí    | sí                    |

Scenario: ES02 - Variedad de consejos sobre diferentes aspectos de la higiene del sueño
TA02
Given que el [usuario] recibe [consejos diarios] sobre la [higiene del sueño]
And el [usuario] revisa los [consejos recibidos] durante varios [días consecutivos]
When el [usuario] revisa los [consejos]
Then la [aplicación] proporciona una [variedad de consejos], abordando diferentes aspectos de la [higiene del sueño], como el [ambiente de dormitorio], la [rutina antes de dormir], y la [gestión del estrés].

Examples:
| usuario  | consejos diarios | días consecutivos | variedad de consejos |
| Jhosep   | sí               | 7                 | sí                   |
| Fátima   | sí               | 5                 | sí                   |

Scenario: ES03 - Información adicional sobre un consejo específico
TA03
Given que el [usuario] desea obtener [más información] sobre un [consejo específico]
And el [usuario] selecciona un [consejo diario]
When el [usuario] selecciona el [consejo]
Then la [aplicación] proporciona [información adicional] o [recursos] para ayudar al [usuario] a comprender y aplicar el [consejo] de manera efectiva.

Examples:
| usuario  | más información | consejo específico | consejo diario  | información adicional | recursos  |
| Jhosep   | sí              | ambiente de dormitorio | sí          | sí                    | sí        |
| Fátima   | sí              | rutina antes de dormir | sí          | sí                    | sí        |