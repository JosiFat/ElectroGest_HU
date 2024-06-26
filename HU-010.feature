Feature: HU-010 - Como usuario, quiero poder visualizar mis tendencias de sueño a lo largo del tiempo para monitorear mi progreso y ajustes.

Scenario: ES01 - Visualización de gráfica con patrones de sueño
TA01
Given que el [usuario] ha registrado sus [datos de sueño] en la aplicación durante un período de tiempo
When el usuario accede a la [sección de visualización de tendencias del sueño]
Then el usuario debería poder ver un [gráfico] que muestre sus [patrones de sueño] a lo largo del tiempo.

Examples:
| usuario  | datos de sueño            | sección de visualización de tendencias del sueño | gráfico con patrones de sueño |
| Jhosep   | Datos de sueño de 3 meses | Sí                                               | Sí                            |
| Fátima   | Datos de sueño de 6 meses | Sí                                               | Sí                            |

Scenario: ES02 - Identificación de patrones y tendencias en el sueño
TA02
Given que el [usuario] está visualizando la [visualización de tendencias del sueño]
When el usuario examina el [gráfico de tendencias]
Then el usuario debería poder [identificar patrones] y [tendencias] en su [sueño], como variaciones en la duración o la consistencia del horario de sueño.

Examples:
| usuario  | gráfico de tendencias            | identificación de patrones y tendencias |
| Jhosep   | Gráfico de tendencias de 3 meses | Sí                                      |
| Fátima   | Gráfico de tendencias de 6 meses | Sí                                      |

Scenario: ES03 - Detalles adicionales del estado de sueño mediante visualización interactiva
TA03
Given que el [usuario] está examinando la [visualización de tendencias del sueño]
When el usuario interactúa con el [gráfico] o los [datos]
Then el usuario debería poder ver [detalles adicionales], como la [eficiencia del sueño], los [ciclos de sueño] (ligero, profundo, REM) o la [frecuencia de despertares], mediante [herramientas de visualización interactivas] como desplazamiento, zoom o información emergente.

Examples:
| usuario  | gráfico de tendencias | interacción con datos del gráfico | detalles adicionales           |
| Jhosep   | Gráfico de 3 meses    | Sí                                | Eficiencia, Ciclos, Frecuencia |
| Fátima   | Gráfico de 6 meses    | Sí                                | Eficiencia, Ciclos, Frecuencia |

Scenario: ES04 - Personalización de la visualización de tendencias del sueño
TA04
Given que el [usuario] está visualizando las [tendencias del sueño]
When el usuario desea [personalizar la visualización]
Then la aplicación debería proporcionar [opciones] para [ajustar la escala del eje], [cambiar entre diferentes tipos de gráficos] (por ejemplo, de líneas o de barras) y [seleccionar qué datos específicos] mostrar en la visualización.

Examples:
| usuario  | personalización de la visualización | ajuste de escala del eje | cambio de tipo de gráfico | selección de datos específicos |
| Jhosep   | Sí                                  | Sí                       | Línea a Barras            | Duración, Frecuencia           |
| Fátima   | Sí                                  | Sí                       | Línea a Barras            | Eficiencia, Ciclos             |