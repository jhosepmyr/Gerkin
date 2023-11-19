Feature: Acceder a recursos educativos sobre donaciones y reducción de desperdicio
#Como ciudadano, quiero acceder a recursos educativos sobre la importancia de las donaciones y la reducción del desperdicio de alimentos, para comprender mejor la relevancia de mis acciones.

Scenario Outline: Acceso a recursos educativos
Given el ciudadano cuenta con rol registrado.
And se encuentra en la página principal.
When el ciudadano selecciona la opción "Recursos Educativos".
Then el sistema muestra una lista de <recursos> relacionados a información sobre donaciones y reducción del desperdicio de alimentos.
Examples:
  | recursos  |
  | Artículos |
  | Videos    |
  | Enlaces   |

Scenario Outline: Visualización de contenido educativo
Given el sistema muestra una lista de <tipos de recursos educativos>.
When el ciudadano hace clic en un "tipo de recurso".
Then el sistema muestra los <contenidos educativos> relacionados al <tipo de recurso educativo>.
Examples:
  | tipos de recursos educativos | contenidos educativos                                                                 |
  | Artículos                    | Consejos para reducir el desperdicio de alimentos en casa                             |
  | Videos                       | Historias inspiradoras de donaciones y su impacto en la comunidad.                    |
  | Enlaces                      | Enlaces a sitios web con información sobre prácticas sostenibles en la alimentación.  |