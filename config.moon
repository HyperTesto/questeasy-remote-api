-- config.moon
config = require "lapis.config"

config "development", ->
  mysql ->
    host "127.0.0.1"
    user "root"
    password "root"
    database "questura"

config "production", ->
    mysql ->
    host "127.0.0.1"
    user "questura"
    password "questura"
    database "questura"
