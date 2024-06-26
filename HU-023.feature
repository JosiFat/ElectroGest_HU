Feature: HU-023 - Como usuario, quiero monitorear mi ritmo cardíaco durante la noche para obtener un análisis más completo de mi salud y calidad de sueño.

Scenario: ES01 - Registro de ritmo cardíaco durante la noche
TA01
Given que el [usuario] ha activado la función de [monitoreo del ritmo cardíaco] durante la [noche] en la [aplicación]
And la [aplicación] registra el [ritmo cardíaco] del [usuario] mientras [duerme]
When la [aplicación] registra el [ritmo cardíaco]
Then la [aplicación] recopila [datos precisos y continuos] sobre el [ritmo cardíaco] del [usuario] durante [toda la noche].

Examples:
| usuario  | monitoreo del ritmo cardíaco | noche   | ritmo cardíaco | duerme | datos precisos y continuos |
| Jhosep   | activado                     | sí      | sí             | sí     | sí                         |
| Fátima   | activado                     | sí      | sí             | sí     | sí                         |