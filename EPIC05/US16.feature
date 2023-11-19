Feature: Recibir actualizaciones sobre resultados de donaciones
#Como ciudadano, quiero recibir actualizaciones sobre los resultados generales de las donaciones y el impacto en la comunidad, para estar al tanto de nuestra contribución.

Scenario Outline: Recepción y visualización de actualizaciones
Given el ciudadano ha habilitado el <acceso> a las notificaciones por la aplicación.
When la aplicación recopila datos sobre las <donaciones con mayores impactos>.
And el ciudadano prende su dispositivo.
Then el sistema muestra, en las notificaciones, un resumen de las <actualizaciones periodicas> (diarias) más importantes.
Examples:
  | acceso          | actualizaciones periodicas                                  |
  | Habilitado      | Una empresa realiza una donacion de 2 millones de productos |
  | Deshabilitado   | ------------------------------------------------------------|

Scenario Outline: Acceso a las actualizaciones generales.
Given el donante cuenta con rol registrado.
And se encuentra en la página principal.
And el sistema muestra la sección "Donaciones con mayor impacto".
When el ciudadano selecciona la sección "Donaciones con mayor impacto".
Then el sistema muestra detalles sobre el impacto de las donaciones, como la <cantidad de alimentos donados> y <informacion> de cómo han ayudado a la comunidad.
Examples: impacto de las donaciones
  | cantidad de alimentos donados | informacion                           |
  | 1000 leches                   | Se destino a los comedores del Callao |
  | 20000 cereales                | A las ollas comunes del cono norte    |