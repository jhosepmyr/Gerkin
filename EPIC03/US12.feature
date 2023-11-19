Feature: Recibir recordatorios de donaciones programadas
#Como donante, quiero recibir recordatorios antes de las donaciones programadas para asegurarme de estar preparado y no olvidar contribuir.

Scenario Outline: Visualización de la página “Configuraciones”
Given el donante cuenta con rol registrado.
And se encuentra en la página principal.
And se muestra la sección "Configuraciones"
When el donante selecciona la sección "Configuraciones".
Then el sistema le muestra la sección "Recordatorio de donaciones".

Scenario Outline: Visualización de la sección “Recordatorio de donaciones”
Given el sistema le muestra la sección "Recordatorio de donaciones".
When el donante seleccione  la sección "Recordatorio de donaciones".
Then el sistema muestra un listado de <frecuencias>
Examples:
  | frecuencias      |
  | Diario          |
  | Semanal         |
  | Quincenal       |
  | Mensual         |

Scenario Outline: Selección de frecuencia de recordatorios
Given el sistema muestra un listado de <frecuencias>
When el donante seleccione un "tipo de frecuencia".
Then el sistema establece la <frecuencia> en la que va a enviar un recordatorio antes de la donación programada.
Examples:
  | frecuencia      |
  | Diario          |
  | Semanal         |
  | Quincenal       |
  | Mensual         |

Scenario Outline: Recepción de recordatorio
Given ha llegado el momento del recordatorio configurado.
When el sistema activa el recordatorio.
Then el sistema muestra una <notificación> de recordatorio al donante.
Examples:
  | notificacion                       |
  | Tienes una donación pendiente.      |
  | ¡Recuerda tu donación pendiente!    |
  | Donación pendiente, ¡no lo olvides! |
  | Tienes una donación pendiente.      |