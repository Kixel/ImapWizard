#from app import app
import app
#from flask import Flask
from threading import Thread





if __name__ == "__main__":
    print("[ ] Starting background tasks")
    
    thread = Thread(target = app.server.serverThread, args = (0, ))
    
    thread.start()
    
    print("Started server thread")
    
    app.flaskapp.run("localhost", 6969, debug=False)
    
    print("Started http server")
    
    thread.join()
    
    print(" AAA")