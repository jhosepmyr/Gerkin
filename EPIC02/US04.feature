Feature: Seleccionar cupón de empresa asociada
#Como ciudadano, quiero ver la lista de las diferentes empresas asociadas a la aplicación y seleccionar mi cupón entre ellas al finalizar una donación, para utilizarlo en mi tienda preferida o la que más frecuento.

Scenario Outline: Visualización de empresas asociadas
Given el sistema muestra la sección "Escoge tu cupón de descuento".
When el ciudadano selecciona la sección "Escoge tu cupón de descuento".
Then el sistema muestra una lista de <empresas con cupones> disponibles con el <producto> asociado.
Examples: Producto de cupon
    | empresas con cupones | producto      |
    | Metro                | televisor     |
    | Tottus               | refrigeradora |


Scenario Outline: Selección de empresa y cupón
Given el sistema muestra una lista de <empresas con cupones> disponibles con el <producto> asociado.
When el ciudadano selecciona el "cupón" correspondiente.
Then el sistema asocia el <cupon> a la <donacion>.
And muestre un <mensaje de confirmacion>.
And muestra las secciones "Usar ahora" y "Regresar".

Examples: Cupon
    | cupon    | donacion     | mensaje de confirmacion                                |
    | cupon#12 | donacion#30  | El cupon se registro correctament junto a la donacion. |
    | cupon#18 | donacion#34  | El cupon se registro correctament junto a la donacion. |