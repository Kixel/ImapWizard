from flask import Flask

flaskapp = Flask(__name__)
flaskapp.debug = True
flaskapp.secret_key = 'development'
keeprunning = True

from app import routes
from app import server