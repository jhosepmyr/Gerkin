Feature: Organizar y guardar cupones por fecha de caducidad
#Como ciudadano, quiero organizar y guardar mis cupones en secciones según su fecha de caducidad, para mantenerlos ordenados y asegurarse de que los cupones próximos a vencer no se pierdan.

Scenario Outline: Acceso a la lista de cupones.
Given el donante cuenta con rol registrado.
And se encuentra en la página principal.
And se muestra la sección "Mis Cupones".
When el donante abre la página de "Mis Cupones".
Then el sistema muestra una lista de los últimos <cupones> agregados y disponibles en la cuenta del ciudadano.
And muestra la sección "Organizar por Fecha de Caducidad".
Examples: cupones
  | cupones          |
  | 50% en televisor |
  | 30% en lavadora  |
  | 7% en shampu     |

Scenario Outline: Organización por fecha de caducidad.
Given el sistema muestra la sección "Organizar por Fecha de Caducidad".
When el ciudadano selecciona la opción de "Organizar por Fecha de Caducidad".
Then el sistema muestra <categorias> según la proximidad de la fecha de caducidad.
Examples: fecha caducidad
    | categorias        |
    | Próximos a Vencer |
    | Utilizados        |
    | Caducados         |

Scenario Outline: Visualización de cupones próximos a vencer.
Given el sistema muestra la categoría "Próximos a Vencer".
When el ciudadano selecciona la categoría "Próximos a Vencer".
Then el sistema muestra los <cupones> que están a punto de caducar (en los próximos 7 días).
Examples: cupones
    | cupones          |
    | 50% en televisor |
    | 30% en lavadora  |

Scenario Outline: Visualización de cupones utilizados.
Given el sistema muestra la categoría "Utilizados".
When el ciudadano selecciona la categoría "Utilizados".
Then el sistema muestra los <cupones> que ya han sido utilizados.
Examples: cupones
    | cupones          |
    | 5% en radio      |
    | 30% en sarten    |

Scenario Outline: Visualización de cupones caducados.
Given el sistema muestra la categoría "Caducados".
When el ciudadano selecciona la categoría "Caducados".
Then el sistema muestra los <cupones> que ya han caducado.
Examples: cupones
    | cupones             |
    | 15% en pasta dental |
    | 30% en lacteos      |