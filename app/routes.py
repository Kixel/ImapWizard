from app import flaskapp


@flaskapp.route("/")
@flaskapp.route("/index")
def index():
    return "Hello World"


@flaskapp.route("/accounts")
def accounts():
    return "Accounts"

@flaskapp.route("/rules")
def accounts():
    return "Rules"

@flaskapp.route("/settings")
def accounts():
    return "Settings"

