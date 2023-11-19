Feature: Registrar cantidad de productos donados
#como donante quiero registrar  la cantidad de un mismo tipo de producto donado para un mejor control de las donaciones.

Scenario Outline: Registro de cantidad

    Given el dondante se encuentra en la pagina de "Donar"
    When el donante la selecciona la seccion "Cantidad de productos"
    And ingresa la <cantidad de productos> donados del mismo tipo 
    Then el sistema registra la cantidad 
    And asocia con el <tipo de producto donado>
Examples:  cantidad de productos
    | cantidad de productos | tipo de producto donado |
    | 2                     | 2 bolsas de arroz       |
    | 5                     | 4 bolsas de fideos      |
    | 3                     | 4 bolsas de azucar      |

Scenario Outline:  Registro de cantidad minima
    Given el donante se encuentra en la pagina "Donar"
    When el donante selecciona la sección "cantidad de productos"
    And intenta registrar una <cantidad> menor al mínimo permitido que es 1
    Then el sistema muestra un <mensaje de error>
    And no permite el registro

 Examples: cantidad de productos
     | cantidad | 
     | 0        | 
     | -1       | 
     | -2       | 

Examples: mensaje
    | mensaje de error                   |
    | la cantidad debe ser mayor a 0     |
    | la cantidad ingresada no es valida |