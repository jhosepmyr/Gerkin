Feature: Mostrar cupones cercanos a vencer
#Como ciudadano, quiero que al abrir la aplicación o al encender mi dispositivo, me muestre los cupones cercanos a vencer, para que esté al tanto y pueda utilizarlos de inmediato.

Scenario Outline: Acceso a la pantalla de inicio.
Given el ciudadano ha habilitado el <acceso> de las notificaciones por la aplicación.
And encendido su dispositivo.
And ha abierto la aplicación.
When el sistema carga los <cupones> que están próximos a vencer.
Then el sistema muestra una sección destacada de "Cupones Próximos a Vencer" en la pantalla de inicio o del dispositivo.
Examples:
  | acceso        | cupones                 |
  | habilitado    | 5% en ropa              |
  | deshabilitado | 10% en electrodomesticos|
  | habilitado    | 8% en muebles           |

Scenario Outline: Visualización de cupones próximos a vencer.
Given el sistema muestra la sección de "Cupones Próximos a Vencer" en la pantalla de inicio o del dispositivo.
When el ciudadano selecciona la sección de "Cupones Próximos a Vencer".
Then el sistema muestra una lista de los <cupones> que están a punto de caducar (en los próximos 3 días) con únicamente el <nombre del producto> y <cuando le falta para vencer>.
Examples:

  | cupones | producto       | dias proximos a vencer |
  | cupon#3 | Descuento Café | 2 días                 |
  | cupon#6 | Oferta Pizza   | 1 día                  |
  | cupon#8 | Descuento Ropa | 3 días                 |

Scenario Outline: Acceso a más detalles.
Given el sistema muestra una lista de los <cupones> que están a punto de caducar.
When el ciudadano selecciona un "cupón específico".
Then el sistema lo redirecciona a la página de "Mis cupones".
And muestra todos los <detalles sobre el cupon>.
Examples:
  | cupones | cupon especifico | detalles                                    |
  | cupon#3 | Descuento Café   | 20% de descuento en cafés. Válido hasta 2023-12-01 |
  | cupon#6 | Oferta Pizza     | Compra 1 pizza y obtén la segunda gratis.          |
  | cupon#8 | Descuento Ropa   | 15% de descuento en todas las prendas.             |