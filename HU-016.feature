Feature: HU-016 - Como usuario, quiero que la funcionalidad de búsqueda de la aplicación sea mejorada para poder encontrar rápidamente la información que necesito.

Scenario: ES01 - Sugerencias predictivas en la búsqueda
TA01
Given que un [usuario] utiliza la [función de búsqueda] en la aplicación
And el [usuario] comienza a escribir en el [campo de búsqueda]
Then la [aplicación] ofrece [sugerencias predictivas].

Examples:
| usuario  | función de búsqueda | campo de búsqueda | sugerencias predictivas     |
| Jhosep   | búsqueda avanzada   | campo principal   | términos populares          |
| Fátima   | búsqueda básica     | barra de búsqueda | términos previamente usados |

Scenario: ES02 - Filtros avanzados en los resultados de búsqueda
TA02
Given que un [usuario] realiza una [búsqueda] en la aplicación
And el [usuario] desea [refinar los resultados de búsqueda]
Then la [aplicación] muestra [opciones de filtros avanzados].

Examples:
| usuario  | búsqueda       | refinar los resultados de búsqueda | opciones de filtros avanzados  |
| Jhosep   | "ejercicios"   | sí                                 | valoración, relevancia, fecha  |
| Fátima   | "meditación"   | sí                                 | valoración                     |

Scenario: ES03 - Resultados relevantes y precisos
TA03
Given que un [usuario] realiza una [búsqueda] en la aplicación
And el [usuario] presiona el [botón de búsqueda]
Then la [aplicación] devuelve [resultados relevantes y precisos].

Examples:
| usuario  | búsqueda                | botón de búsqueda | resultados relevantes y precisos          |
| Jhosep   | "meditación"            | botón principal   | lista de meditación (videos, audios, etc) |
| Fátima   | "consejos para dormir"  | botón secundario  | lista de consejos para mejorar el sueño   |

Scenario: ES04 - Retroalimentación sobre resultados de búsqueda no relevantes
TA04
Given que un [usuario] realiza una [búsqueda] en la aplicación
And los [resultados de la búsqueda] no coinciden con las [expectativas del usuario] o no son [relevantes]
Then la [aplicación] proporciona [retroalimentación clara] sobre cómo mejorar la [búsqueda].

Examples:
| usuario  | búsqueda          | resultados de la búsqueda  | relevantes | retroalimentación clara                   |
| Jhosep   | "cursos online"   | resultados incorrectos     | no         | sugerencias de términos pertinentes       |
| Fátima   | "recetas veganas" | resultados incorrectos     | no         | consejos para especificar más la búsqueda |