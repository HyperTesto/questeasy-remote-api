-- config.moon
config = require "lapis.config"

config "production", ->
    port 8080
    num_workers 4
    code_cache "on"
    mysql ->
        host os.getenv "QUESTURA_DB_PORT_3306_TCP_ADDR"
        database "questura"
        user "questura"
        password "questura"


config "development", ->
    mysql ->
        host "127.0.0.1"
        user "root"
        password "root"
        database "questura"
