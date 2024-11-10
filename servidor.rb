require 'webrick'

# Crear un servidor HTTP en el puerto 8000
server = WEBrick::HTTPServer.new(:Port => 8000)

# Definir el comportamiento cuando se accede a la raíz del servidor
server.mount_proc '/hello' do |req, res|
  res.content_type = 'text/html'
  res.body = "<html><body><h1>Hola Mundo</h1><p>Bienvenido a mi pagina web usando Ruby.</p></body></html>"
end

# Manejar la señal de interrupción (Ctrl+C) para apagar el servidor
trap 'INT' do 
  server.shutdown 
end

# Iniciar el servidor
server.start
