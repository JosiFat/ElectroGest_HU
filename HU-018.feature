Feature: HU-018 - Como usuario, quiero que la aplicación adapte el formato de fecha y hora según la configuración regional de mi dispositivo para una mejor comprensión.

Scenario: ES01 - Personalización del formato de fecha y hora
TA01
Given que un [usuario] tiene [preferencias específicas] sobre el [formato de fecha y hora]
And desea [personalizar] el formato de [visualización de fechas y horas]
Then la [aplicación] proporciona [opciones de configuración] para seleccionar diferentes [formatos de fecha y hora].

Examples:
| usuario  | preferencias específicas | personalizar | formato de visualización | opciones de configuración        | formatos de fecha y hora         |
| Jhosep   | 12 horas                 | sí           | fecha y hora             | formato de fecha, formato de hora| 12/31/2023 11:59 PM, 31/12/2023 23:59 |
| Fátima   | 24 horas                 | sí           | fecha y hora             | formato de fecha, formato de hora| 31-12-2023 23:59, 2023-12-31 23:59 |