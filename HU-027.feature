Feature: HU-027 - Como usuario, quiero que la aplicación detecte sonidos durante la noche, como ronquidos o ruidos ambientales para identificar posibles interrupciones en mi sueño.

Scenario: ES01 - Monitoreo de sonidos durante la noche
TA01
Given que el [usuario] ha activado la función de [detección de sonidos] en la [aplicación]
And la [aplicación] monitorea los [sonidos] durante la [noche] mientras el [usuario] [duerme]
When la [aplicación] monitorea los sonidos
Then la [aplicación] identifica y registra [sonidos relevantes], como [ronquidos] o [ruidos ambientales], que podrían [interrumpir el sueño] del [usuario].

Examples:
| usuario  | detección de sonidos | sonidos | noche | duerme | sonidos relevantes | ronquidos | ruidos ambientales | interrumpir el sueño |
| Jhosep   | sí                   | sí      | sí    | sí     | sí                 | no        | sí                 | no                   |
| Fátima   | sí                   | sí      | sí    | sí     | no                 | sí        | sí                 | sí                   |