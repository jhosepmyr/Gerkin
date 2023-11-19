Feature: Agradecimiento Automático Posterior a Donación
#Como ciudadano, quiero recibir agradecimientos automáticos después de cada donación, para sentirme valorado y apreciado como donante constante.

Scenario Outline: Donación exitosa y agradecimiento automático.
Given el ciudadano ha completado una <donacion> con éxito.
When el sistema registra la <donacion>.
Then el sistema envía automáticamente un <mensaje de agradecimiento> al ciudadano.
And muestra el <mensaje de agradecimiento> en la pantalla de confirmación de donación exitosa.
Examples:

  | donacion    | mensaje de agradecimiento                                                 |
  | Donación#24 | ¡Gracias por hacer la diferencia en la vida de quienes más lo necesitan!  |
  | Donación#65 | ¡Gracias por hacer la diferencia en la vida de quienes más lo necesitan!  |
  | Donación#87 | ¡Gracias por hacer la diferencia en la vida de quienes más lo necesitan!  |