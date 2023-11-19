Feature: Mostrar resumen de detalles de donación
#Como donante, quiero que se muestre un resumen de todos los detalles de mi donación antes de finalizar para que esté más seguro de que todos los datos que puse son correctos.

Scenario Outline: Resumen de donación
Given el donante se encuentra en la página de "Donar".
When el donante selecciona la opción "Finalizar donación".
Then el sistema muestra un resumen de todos los detalles de la <donacion>, incluyendo <productos>, <cantidades>, <fecha de vencimiento>.
And muestra al final del resumen secciones de “Donar”, “Cancelar” y “Modificar”.
Examples:
  | donacion     | productos     | cantidades | fecha_de_vencimiento|
  | Donación#41  | arroz         |    10      | 2023-11-15          |
  | Donación#23  | atún          |    8       | 2023-12-05          |
  | Donación#14  | leche         |    5       | 2023-12-31          |

Scenario Outline: Confirmación de donación
Given el donante ha revisado el resumen de la donación.
When el donante selecciona "Donar".
Then el sistema registra la <donacion>.
And muestra un <mensaje de confirmacion> (donación exitosa).
And muestra la sección “Escoge tu cupón de descuento”.
Examples:

  | donacion    | mensaje                                               |
  | Donación#34 | ¡Donación exitosa! Gracias por tu apoyo!              |
  | Donación#45 | Donación realizada con éxito. ¡Gracias por tu apoyo!  |
  | Donación#95 | ¡Tu donación ha sido confirmada! ¡Gracias por ayudar! |

Scenario Outline: Modificación de detalles de donación.
Given el donante encuentra un error en el resumen de la <donación>.
When el donante selecciona "Modificar".
Then el sistema redirige al donante a la página de "Donar".
And muestra todos los <cambios> que realizó el donante previamente a la <donacion>.
Examples:

  |  donacion   | cambios                                  |
  | Donación#35 | Agregó 4 unidades más de arroz.          |
  | Donación#48 | Cambió la cantidad de atún a 8 unidades. |
  | Donación#91 | Agregó 2 unidades de leche.              |

Scenario Outline: Cancelación de donación.
Given el donante ha revisado el resumen de la donación.
And no está conforme con la donación.
When el donante selecciona "Cancelar".
Then el sistema no procesa ningún registro de donación y muestra un <mensaje>.
And redirige al donante a la página principal.
Examples:
  |      mensaje       |
  | Registro cancelado |
  | Donación cancelada |
  | Donación cancelada |