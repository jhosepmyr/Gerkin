Feature: Recibir estadísticas y análisis de eficacia de donaciones
#Como gerente de una empresa de alimentos, quiero recibir estadísticas y análisis sobre la eficacia de nuestras donaciones, para mejorar nuestras prácticas.

Scenario Outline: Acceso a estadísticas y análisis comparativos.
Given el gerente cuenta con rol registrado.
And se encuentra en la página principal.
And el sistema muestra la sección "Estadísticas Comparativas".
When el gerente selecciona la sección "Estadísticas Comparativas".
Then el sistema carga y muestra estadísticas detalladas sobre la <cantidad de alimentos donados>, <los beneficiarios>, <impacto geografico>.
And muestra un <grafico de la variacion de las donaciones> realizadas por el gerente.
Examples:
  | cantidad de alimentos donados | beneficiarios | impacto geografico |
  |             5000              |     200       |     Nacional       |
  |             8000              |     300       |     Regional       |
  |             12000             |     500       |     Nacional       |