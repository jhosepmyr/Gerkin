Feature: Gestión de fecha de vencimiento al donar productos
#Como donante, quiero registrar la fecha de vencimiento del producto donado para informar la proximidad de caducidad.

Scenario Outline: Visualizar calendario para escoger fecha de vencimiento.
    Given que el donante se encuentra en la página de "Donar".
    When el donante selecciona la sección "Fecha de Expiración".
    Then el sistema muestra un calendario mensual.
    And marca el <dia actual> de color rojo.
    And muestra un mensaje indicando el <dia actual> resaltado.

    Examples:
        | dia actual   |
        | 2023-12-01   |
        | 2023-12-15   |
        | 2023-12-10   |

Scenario Outline: Registro de fecha de vencimiento
    Given el donante se encuentra visualizando el calendario mensual.
    When el donante selecciona una <fecha de vencimiento> del <producto> donado valida.
    Then el sistema registra la <fecha de vencimiento>.
    And la asocia con el <producto> donado.

    Examples:
      | fecha de vencimiento | producto        |
      | 2023-12-01           | saco de arroz   |
      | 2023-12-15           | leche envolsada |
      | 2024-01-10           | lacteos         |


Scenario Outline: No registrar productos vencidos.
Given el donante se encuentra visualizando el calendario mensual.
When el donante intenta registrar un producto con una <fecha de vencimiento> anterior a la <fecha actual>.
Then el sistema muestra un <mensaje de error>.
And no permite el registro.

Examples:
  | fecha de vencimiento | fecha actual |
  | 2023-09-01           | 2023-09-02   |
  | 2023-07-15           | 2023-07-15   |
  | 2023-08-10           | 2023-08-12   |