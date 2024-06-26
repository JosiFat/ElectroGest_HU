Feature: HU-013 - Como usuario, quiero integrar la aplicación con otros dispositivos de seguimiento de salud para obtener un análisis más completo de mi bienestar general.

Scenario: ES01 - Sincronización de datos de nuevos dispositivos IoT
TA01
Given que el [usuario] ha agregado un nuevo [dispositivo IoT] a su cuenta
When el [usuario] sincroniza los [datos] del nuevo [dispositivo] con la aplicación
Then los nuevos [datos de salud] se agregan al [historial del usuario] sin errores.

Examples:
| usuario  | dispositivo IoT     | datos sincronizados | datos de salud agregados |
| Jhosep   | Smartwatch          | Sí                  | Sí                       |
| Fátima   | Banda de fitness    | Sí                  | Sí                       |
| MARÍA    | Sensor de sueño     | Sí                  | Sí                       |
| CARLOS   | Monitor de presión  | Sí                  | Sí                       |