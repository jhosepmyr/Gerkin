Feature: Redireccionar a la página de venta del producto
#Como ciudadano, quiero que el cupón me redireccione a la página donde el producto se vende, para poder ver más detalles del producto y realizar compras de manera conveniente.

Scenario Outline: Redirección a la página de compra.
Given el sistema muestra la sección "Usar ahora".
When el ciudadano selecciona la sección "Usar ahora".
Then el sistema genera un <link> a la página donde se vende el <producto> asociado al <cupon>.
And redirige al ciudadano al <link> donde se puede ver más detalles del producto.
And muestra un <mensaje de confirmacion>.

Examples: Producto
    |  link                  | producto    | cupon    |
    |  metro.com/televisor4k | televisor4k | cupon#12 |
    |  tottus.com/lampara    | lampara     | cupon#34 |

Examples: Mensaje
    | mensaje de confirmacion               |
    | Se encontro el producto exitosamente  |


Scenario Outline: Compra exitosa.
Given el sistema redirige al ciudadano al <link>.
When el ciudadano completa la compra del <producto> con éxito.
Then el sistema reconoce la compra.
And actualiza el <estado> del <cupon> a usado.
And muestra un <mensaje de agradecimiento> por la compra.

Examples: Mensaje
    | cupon    | estado | Mensaje de agradecimiento                                                          |
    | cupon#12 | usado  | ¡Hola Juan! Gracias por tu compra. Esperamos que disfrutes del producto.           |
    | cupon#34 | usado  | ¡Hola Pedro! Gracias por tu compra. No dudes en contactarnos si tienes preguntas.  |