require 'webrick'

# Create an HTTP server on port 8000
server = WEBrick::HTTPServer.new(:Port => 8000)

# Define behavior when accessing the server root
server.mount_proc '/' do |req, res|
  res.content_type = 'text/html'
  res.body = "<html><body><h1>Hello World</h1><p>Welcome to my website using Ruby.</p></body></html>"
end

# Handle interrupt signal (Ctrl+C) to shut down the server
trap 'INT' do 
  server.shutdown 
end

# Start the server
server.start
