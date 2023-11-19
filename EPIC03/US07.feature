Feature: Seleccionar tipos de productos para donar
#Como donante, quiero visualizar una lista de tipos de productos para saber que tipos de productos voy a donar.

Given el donante cuenta con rol registrado.
And se encuentra en la página principal.
And se muestra la sección "Donar".
When el donante abre la página de "Donar".
Then el sistema muestra la sección "Tipos de productos" en la parte izquierda de la pantalla.


Scenario Outline: Búsqueda de listado por tipo de productos.
Given el donante se encuentra en la página de "Donar".
When el donante selecciona la sección "Tipos de productos".
Then el sistema muestra un listado de los <nombres de los tipos de productos mas donados>.

Examples:

  | nombres de los tipos de productos mas donados |
  | arroz                                         |
  | leche                                         |
  | atún                                          |

Scenario Outline: Búsqueda de escritura por tipo de productos.
Given el donante se encuentra en la página de "Donar".
When el donante escribe en la sección "Tipos de productos".
Then el sistema muestra un listado de los <nombres de los tipos de productos con mayor coincidencia>.

Examples:
    | nombres de los tipos de productos con mayor coincidencia |
    | leche                                                    |
    | zanahoria                                                |
    | atún                                                     |

Scenario Outline: Seleccionar un tipo de producto.
Given el donante ha seleccionado un <tipo de producto>.
When el donante selecciona un <tipo de producto>.
Then el sistema agrega el <tipo de producto> seleccionado a la lista de productos por donar.

Examples:
    | tipo de producto              |
    | leche                         |
    | zanahoria                     |
    | arroz                         |
    | atún                          |