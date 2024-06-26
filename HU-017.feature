Feature: HU-017 - Como usuario, quiero que la aplicación tenga soporte para múltiples idiomas para poder utilizarla en mi idioma preferido.

Scenario: ES01 - Selección de idioma preferido en la configuración
TA01
Given que un [usuario] accede a la [configuración] de la aplicación
And busca la [opción de idioma]
Then el [usuario] puede seleccionar su [idioma preferido] de la [lista desplegable].

Examples:
| usuario  | configuración  | opción de idioma | idioma preferido | lista desplegable               |
| Jhosep   | menú principal | sección idiomas  | Español          | Español, Inglés, Francés        |
| Fátima   | ajustes        | idioma           | Francés          | Español, Inglés, Francés, Alemán|

Scenario: ES02 - Actualización de la interfaz al nuevo idioma seleccionado
TA02
Given que un [usuario] ha seleccionado un [idioma] en la [configuración] de la aplicación
And el [usuario] cambia el [idioma] de la aplicación
Then todos los [elementos de la interfaz de usuario] se actualizan al [nuevo idioma seleccionado].

Examples:
| usuario  | idioma        | configuración | elementos de la interfaz de usuario | nuevo idioma seleccionado |
| Jhosep   | Inglés        | ajustes       | menú, botones, etiquetas            | Inglés                    |
| Fátima   | Alemán        | sección idiomas | títulos, descripciones, mensajes  | Alemán                    |