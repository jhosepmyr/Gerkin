Feature: Acceder a foro de responsabilidad social corporativa
#Como gerente de una empresa de alimentos, quiero acceder a un foro donde las empresas puedan discutir estrategias de responsabilidad social corporativa, para aprender de otras organizaciones.

Scenario Outline: Visualización de la página “Foro de RSC”.
Given el gerente cuenta con rol registrado.
And se encuentra en la “página principal”.
And el sistema muestra la sección "Foro de RSC".
When el gerente selecciona la opción "Foro de RSC".
Then el sistema muestra los principales <foros> de responsabilidad social corporativa y cada uno tiene una sección agregar "opinion".
And muestra en la parte superior de la página la sección “Temas de discusión”.
Examples:
    | foros                                       |
    | Ayuda social                                |
    | Mejorando el mundo, ayudando                |

Scenario Outline: Búsqueda de tema de discusión.
Given el sistema muestra en la parte superior de la página la sección “Temas de discusión”.
When el gerente selecciona la opción “Temas de discusión”.
And el gerente escribe un <tema> en particular válido.
Then el sistema muestra una lista de los <temas mas populares> encontrados.
Examples:
    | tema       | temas mas populares                   |
    | alimentos  | Alimentos mas necesitados             |
    | donacion   | Donantes que hicieron más donaciones  |

Scenario Outline: Selección de tema de discusión
Given el sistema muestra una lista de los temas más populares encontrados.
When el gerente selecciona el "tema" de su preferencia.
Then el sistema busca los "foros" con mayor incidencia.
And muestra los "foros" encontrados al gerente con detalles como el <titulo del tema>, el <autor> y la <fecha de la ultima respuesta>.
And muestra una sección “agregar opinión” en cada foro.
Examples:
    | titulo del tema                      | autor           | fecha de la ultima respuesta |
    | Familias que necesitan ayuda         | Jorge Martinez  | 15/10/2023                   |
    | Alimentos que más escasean           | Claudia Medina  | 10/10/2023                   |

Scenario Outline: Participación en discusiones.
Given el sistema muestra una sección "agregar opinion" en cada foro.
And el gerente observa un <foro> en particular.
When el gerente selecciona la sección "agregar opinion" del foro respectivo.
Then el sistema muestra una "sección de escritura en blanco".
Examples:
    | foro                          |
    | Ayuda social                  |
    | Mejorando el mundo, ayudando  |

Scenario Outline: Enviar opinión.
Given el sistema muestra una sección "en blanco" para escribir.
And el gerente coloca su <opinion> en la sección "en blanco".
When el gerente ordena "Enviar"
And el sistema agrega la opinión al <foro>
Then el sistema muestra en la parte superior del <foro> como última opinión realizada.
Examples:
    | foro                           |        Opinion      | 
    | Ayuda social                   | Excelente iniciativa|   
    | Mejorando el mundo, ayudando   | Muy buen trabajo    |    