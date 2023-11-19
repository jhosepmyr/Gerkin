Feature: Visualizar ranking de donantes y empresas más comprometidas
#Como donante, quiero ver un ranking de los donantes más activos y las empresas más comprometidas en la plataforma, para conocer a quienes están haciendo una diferencia significativa.

Scenario Outline: Acceso al ranking de donantes y empresas comprometidas.
Given el donante cuenta con rol registrado.
And se encuentra en la página principal.
And el sistema muestra la sección "Ranking de Donantes".
When el donante selecciona la sección "Ranking de Donantes" desde el menú principal.
Then el sistema muestra las listas de <donantes mas activos> y <las empresas mas comprometidas> en la plataforma.
And presenta detalles como el <nombre> del donante o empresa, la <cantidad donada> y <el impacto logrado>.
Examples:
  |          nombre           | cantidad_donada | impacto logrado     |
  | Ciudadano Solidario S.A.  | S/.10,000       | 300 beneficiarios   |
  | Donaciones Express        | S/.15,000       | 600 beneficiarios   |
  | Compromiso Social Co.     | S/.8,000        | 400 beneficiarios   |