from http.server import BaseHTTPRequestHandler, HTTPServer

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        self.wfile.write(b"""
        <html>
          <head><title>Docker Capstone</title></head>
          <body>
            <h1>My Docker Application</h1>
            <p>Successfully built and running inside a Docker container!</p>
          </body>
        </html>
        """)

HTTPServer(("0.0.0.0", 8000), Handler).serve_forever()
