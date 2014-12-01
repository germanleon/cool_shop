#language: es
Característica: Iniciar y cerrar sesión
  Para poder identificarme correctamente y realizar mis pedidos de forma segura
  Como usuario
  Quiero poder iniciar y cerrar sesión
  
  Escenario: Login correcto
    Dado un usuario con email "roger@test.com"
    Cuando voy a la portada
    Y inicio sesión con email "roger@test.com"
    Entonces debería ver "Bienvenido"