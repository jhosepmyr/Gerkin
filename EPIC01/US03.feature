Feature: Registrar empresa de alimentos con cuenta Google
#Como gerente, quiero poder registrar mi empresa de alimentos en la aplicación utilizando la cuenta de Google, para iniciar sesión con el correo electrónico empresarial y gestionar los donativos de mi empresa de manera eficiente.

Scenario Outline: Registro exitoso de empresa con cuenta de Google.
Given el gerente se encuentra en la página de registro de empresa.
When el gerente selecciona la opción "Registrarse con Google".
And inicia sesion en su <cuenta de Google>
Then el sistema crea una nueva cuenta de empresa vinculada a la cuenta de Google.
And muestra un <mensaje de confirmacion>
And redirige al gerente a la página principal.

Examples: Cuenta
    |  cuenta de Google   |
    |  juan2004@gmail.com |
    |  pedro212@gmail.com |

Examples: Mensaje
    | mensaje de confirmacion                                          |
    | Juan, muchas gracias por tu registro. Por favor Iniciar Sesion   |
    | Pedro, muchas gracias por tu registro. Por favor Iniciar Sesion  |


Scenario Outline: Registro fallido de empresa con cuenta de Google.
Given el gerente se encuentra en la página de registro de empresa.
When el gerente selecciona la opción "Registrarse con Google".
And ocurre un error en la autenticacion.
Then el sistema muestra un <mensaje de error>.
And lo redirige de nuevo a la pagina de registro para intentar de nuevo.

Examples: Mensaje
    | mensaje de error                                                               |
    | Juan, hubo un error al vincular tu cuenta de Google. Por favor Iniciar Sesion  |
    | Pedro, hubo un error al vincular tu cuenta de Google. Por favor Iniciar Sesion |


Scenario Outline: Verificación de registro de empresa.
Given el gerente ha registrado su empresa con Google.
When el gerente “cierra sesión”.
And luego vuelve a "Iniciar sesion" con su <cuenta de Google>.
Then el sistema reconoce al gerente como registrado.
And redirige al gerente a la página principal.