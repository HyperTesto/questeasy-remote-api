lapis = require "lapis"
db = require "lapis.db"
schema = require "lapis.db.schema"

import create_table, types from schema

class App extends lapis.Application
    "/": =>
        {
            json: {
                success: true
                message: "hello world"
            }
        }

    "/api/v1/comuni/:ricerca": =>
        {
            json: {
                success: true
                comuni: "lista dei comuni"
            }
        }

    "/api/v1/comuni/id/:id": =>
        {
            json: {
                success: true
                comune: "tutti i dati del comune"
            }
        }

    "/api/v1/comuni/name/:name": =>
        {
            json: {
                success: true
                comune: "tutti i dati del comune"
            }
        }
