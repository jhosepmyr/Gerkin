Feature: Loguearse con cuenta Google
#Como ciudadano, quiero poder registrarme en la aplicación utilizando mi cuenta de Google, para iniciar sesión de manera rápida y segura con mi correo personal de Gmail y acceder a mi perfil personal.

Scenario Outline: Registro exitoso con cuenta de Google
Given el ciudadano se encuentra en la pagina de registro.
When el ciudadano selecciona la opcion "Registrarse con Google"
And inicia sesion en su <cuenta de Google>
Then el sistema crea una nueva cuenta de ciudadano vinculada a la cuenta de Google
And muestra un <mensaje de confirmacion>
And redirige al ciudadano a la pagina principal.

Examples: Cuenta
    |  cuenta de Google   |
    |  juan2004@gmail.com |
    |  pedro212@gmail.com |

Examples: Mensaje
    | mensaje de confirmacion                                          |
    | Juan, muchas gracias por tu registro. Por favor Iniciar Sesion   |
    | Pedro, muchas gracias por tu registro. Por favor Iniciar Sesion  |


Scenario Outline: Registro fallido con cuenta de Google
Given el ciudadano se encuentra en la pagina de registro.
When el ciudadano selecciona la opcion "Registrarse con Google"
And ocurre un error en la autenticacion.
Then el sistema muestra un <mensaje de error>.
And lo redirige de nuevo a la pagina de registro para intentar de nuevo.

Examples: Mensaje
    | mensaje de error                                                               |
    | Juan, hubo un error al vincular tu cuenta de Google. Por favor Iniciar Sesion  |
    | Pedro, hubo un error al vincular tu cuenta de Google. Por favor Iniciar Sesion |


Scenario Outline: Verificacion de registro
Given el ciudadano ha registrado su cuenta con Google.
When el ciudadano "Cierra sesion"
And luego vuelve a "Iniciar sesion" con su <cuenta de Google>
Then el sistema reconoce al ciudadano como registrado
And redirige al ciudadano a la pagina principal