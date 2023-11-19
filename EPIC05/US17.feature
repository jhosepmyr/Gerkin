Feature: Compartir experiencia de donación en redes sociales
#Como ciudadano, quiero compartir mi experiencia de donación en redes sociales directamente desde la aplicación, para inspirar a otros a unirse y apoyar la causa.

Scenario Outline: Visualización del formulario “Compartir experiencia”.
Given el ciudadano cuenta con rol registrado.
And se encuentra en la página principal.
And el sistema muestra la sección "Compartir experiencia"
When el ciudadano selecciona la sección "Compartir experiencia".
Then el sistema muestra el formulario "Compartir experiencia" 
And contiene los campos "Titulo", "Comentario" y una lista de "redes sociales" (Facebook, Twitter o Instagram) son requeridos
And el campo "Fotos" que es opcional.
And muestra al final un botón de "Compartir".

Scenario Outline: Envío de formulario y publicación exitosa con datos válidos.
Given el sistema muestra el formulario "Compartir experiencia" conteniendo los campos.
And el ciudadano coloca un título en el campo <Titulo>.
And el ciudadano coloca una descripción de su experiencia en el campo <Comentario>.
And selecciona su <red social> preferida de la lista de redes sociales.
When el ciudadano ordena "Compartir."
Then el sistema envía la experiencia a la <red social>.
And el sistema muestra un <mensaje de confirmacion> "Su experiencia fue enviada con éxito".
And el sistema limpia los campos del formulario "Compartir experiencia".
Examples:
  | Título                | Comentario                                  | Red Social| Mensaje de confirmación              |
  | Experiencia Increíble | Hoy tuve una experiencia increíble donando  | Facebook  | Su experiencia fue enviada con éxito |
  | Donación Exitosa      | Logramos recolectar muchos alimentos hoy    | Twitter   | Su experiencia fue enviada con éxito |
  | Gran donacion         | Participé en una donación increible         | Instagram | Su experiencia fue enviada con éxito |