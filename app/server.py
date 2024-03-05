import time
from app import keeprunning


def serverThread(args):
    print("A new thread!")
    while keeprunning:
        
        print("In server thread")
        time.sleep(5)
    print("Exiting server thread")