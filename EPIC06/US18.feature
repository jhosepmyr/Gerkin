Feature: Formar parte de grupos o comunidades en la plataforma
#Como ciudadano, quiero la opción de formar parte de grupos o comunidades dentro de la plataforma con intereses afines, para conectarme con personas que comparten mis valores y metas.

Scenario Outline: Visualización de la página “grupos y comunidades”.
Given el ciudadano cuenta con rol registrado.
And se encuentra en la página principal.
And el sistema muestra la sección "Grupos y Comunidades".
When el ciudadano selecciona la sección "Grupos y Comunidades".
Then el sistema muestra los <grupos y comunidades> a los que pertenece el ciudadano.
And muestra la sección "Unirse".
Examples:
|   Grupos y comunidades  | 
| Voluntarios de Alimentos|
|     Apoyo Local         |
|  Empresas colaboradoras |

Scenario Outline: Unirse a grupos o comunidades
Given el ciudadano seleccionó la sección "Unirse".
And el sistema mostró todos los <grupos y comunidades> disponibles
And tienen un botón "unirse" en la parte inferior derecha.
When el ciudadano selecciona el botón “unirse”.
Then el sistema muestra un <mensaje de confirmacion>.
Examples:

| Grupos y comunidades     |mensaje de confirmacion  |
| Empresas colaboradoras   |Lograste unirte con éxito|
| Voluntarios de Alimentos |Lograste unirte con éxito|
| Apoyo Local              |Lograste unirte con éxito|

Scenario Outline: Visualización de Grupo o Comunidad
Given el ciudadano cuenta con rol registrado.
And se encuentra en la sección "Grupos y Comunidades" .
When el ciudadano selecciona un <grupo o comunidad>.
Then el sistema muestra las secciones del "Grupo o Comunidad" (Foros, Anuncios y Noticias).
Examples:

| grupo o comunidad |
| Foros             |
| Anuncios          |
| Noticias          |

Scenario Outline: Visualización en discusiones de grupo
Given el sistema muestra las secciones del "Grupo o Comunidad" (Foros, Anuncios y Noticias).
When el ciudadano selecciona la sección "Discusiones".
Then el sistema muestra las <discusiones mas populares>.
And muestra un botón de "agregar comentario".
Examples:
| discusiones mas populares           |
| Comedores populares mas necesitados |
| Ollas comunes mas necesitas         |