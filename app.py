import http.server
import socketserver
import cgi
import os
import webbrowser
import threading
import getpass
import socket

PORT = 4000
UPLOAD_DIR = "uploads"
TEMPLATE_FILE = "templates/index.html"

# Make sure uploads folder exists
os.makedirs(UPLOAD_DIR, exist_ok=True)

# Load the HTML template once
with open(TEMPLATE_FILE, "rb") as f:
    INDEX_HTML = f.read()

class UploadHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):

    def get_system_ip():
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        try:
            # Connect to a public IP (Google DNS) to get local IP assigned to that interface
            s.connect(('8.8.8.8', 80))
            ip = s.getsockname()[0]
        except Exception:
            ip = '127.0.0.1'
        finally:
            s.close()
        return ip
    print(get_system_ip(),"222")

    def do_GET(self):
        if self.path == "/":
            # system_user = getpass.getuser()
            # INDEX_HTML = INDEX_HTML.replace("{{system_user}}", system_user)
            
            self.send_response(200)
            self.send_header("Content-type", "text/html")
            self.end_headers()
            self.wfile.write(INDEX_HTML)
            system_user = getpass.getuser()
            print(system_user,"111")
            
        else:
            file_path = self.path.lstrip("/")
            uploads_path = os.path.join(UPLOAD_DIR, file_path)
            if os.path.exists(uploads_path):
                self.path = uploads_path
                return http.server.SimpleHTTPRequestHandler.do_GET(self)
            elif os.path.exists(file_path):
                return http.server.SimpleHTTPRequestHandler.do_GET(self)
            else:
                self.send_error(404, "File not found")

    def do_POST(self):
        content_type, pdict = cgi.parse_header(self.headers.get("Content-Type"))
        if content_type == "multipart/form-data":
            form = cgi.FieldStorage(
                fp=self.rfile,
                headers=self.headers,
                environ={"REQUEST_METHOD": "POST"}
            )
            uploaded_file = form['xmlfile']
            if uploaded_file.filename:
                filename = os.path.basename(uploaded_file.filename)
                file_path = os.path.join(UPLOAD_DIR, filename)
                with open(file_path, "wb") as f:
                    f.write(uploaded_file.file.read())

                # Redirect to the uploaded file so browser opens it
                self.send_response(303)
                self.send_header("Location", f"/uploads/{filename}")
                self.end_headers()
            else:
                self.send_response(400)
                self.end_headers()
                self.wfile.write(b"No file uploaded")
        else:
            self.send_response(400)
            self.end_headers()

def open_browser():
    webbrowser.open(f"http://127.0.0.1:{PORT}")

if __name__ == "__main__":
    socketserver.TCPServer.allow_reuse_address = True
    with socketserver.ThreadingTCPServer(("", PORT), UploadHTTPRequestHandler) as httpd:
        threading.Timer(1, open_browser).start()
        print(f"Serving at http://127.0.0.1:{PORT}")
        httpd.serve_forever()