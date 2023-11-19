Feature: Loguearse con cuenta Facebook
#Como ciudadano, quiero poder registrarme en la aplicación utilizando mi cuenta de Facebook, para acceder a mi cuenta personal en la aplicación de forma sencilla.

Scenario Outline: Registro exitoso con cuenta de Facebook.
Given el ciudadano se encuentra en la página de registro.
When el usuario selecciona la opción “Registrarse con Facebook”.
And inicia sesión en su <cuenta de Facebook>.
Then el sistema crea una nueva cuenta de ciudadano vinculada a la cuenta de Facebook.
And muestra una <mensaje de confirmacion>.
And redirige al ciudadano a la página principal.

Examples: Cuenta
    |  cuenta de Facebook |
    |  juan2004@gmail.com |
    |  pedro212@gmail.com |

Examples: Mensaje
    | mensaje de confirmacion                                          |
    | Juan, muchas gracias por tu registro. Por favor Iniciar Sesion   |
    | Pedro, ¡Registro exitoso! Por favor Iniciar Sesion               |

Scenario Outline: Registro fallido con cuenta de Facebook.
Given el ciudadano se encuentra en la página de registro.
When el usuario selecciona la opción “Registrarse con Facebook”.
And ocurre un error en la autenticación.
Then el sistema muestra un <mensaje de error>. 
And lo redirige de nuevo a la pagina de registro para intentar de nuevo.

Examples: Mensaje
    | mensaje de error                                                                          |
    | Juan, hubo un error al vincular tu cuenta de Facebook. Por favor, inténtalo otra vez.       |
    | Pedro, hubo un problema al autenticar tu cuenta de Facebook. Por favor, inténtalo otra vez. |

Scenario Outline: Verificacion de registro
Given el ciudadano ha registrado su cuenta con Facebook.
When el ciudadano "Cierra sesion"
And luego vuelve a “iniciar sesión” con la <cuenta de Facebook>.
Then el sistema reconoce al ciudadano como registrado
And redirige al ciudadano a la pagina principal