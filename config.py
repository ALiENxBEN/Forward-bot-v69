from os import environ 

class Config:
    API_ID = environ.get("API_ID", "9015363")
    API_HASH = environ.get("API_HASH", "1a6107cae9c5a5f869a0b23cc26ac382")
    BOT_TOKEN = environ.get("BOT_TOKEN", "7245532732:AAEt7wihdB12YHMJWryy4p5VD8K_F6YUuP4") 
    BOT_SESSION = environ.get("BOT_SESSION", "bot") 
    DATABASE_URI = environ.get("DATABASE", "mongodb+srv://anicade:anicade@anicade.7igizof.mongodb.net/?retryWrites=true&w=majority")
    DATABASE_NAME = environ.get("DATABASE_NAME", "forward-bot")
    BOT_OWNER_ID = [int(id) for id in environ.get("BOT_OWNER_ID", '6263157611').split()]

class temp(object): 
    lock = {}
    CANCEL = {}
    forwardings = 0
    BANNED_USERS = []
    IS_FRWD_CHAT = []
