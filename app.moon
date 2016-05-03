lapis = require "lapis"
db = require "lapis.db"
schema = require "lapis.db.schema"
util = require "lapis.util"
import to_json from util
import escape from util


class App extends lapis.Application
    "/": =>
        {
            json: {
                success: true
                message: "hello world"
            }
        }

    "/api/v1/comuni/:ricerca": =>
        res = db.query "select * from comuni where nome LIKE CONCAT(?,'%') LIMIT 20", @params.ricerca

        {
            json: {
                success: true
                comuni: res
            }
        }

    "/api/v1/comuni/id/:id": =>
        res = db.query "select * from comuni where id = ?", @params.id
        {
            json: {
                success: true
                comune: res
            }
        }

    "/api/v1/comuni/nome/:name": =>
        res = db.query "select * from comuni where nome = ?", @params.name
        {
            json: {
                success: true
                comune: res
            }
        }
    "/api/v1/documenti/:str": =>
        res = db.query "select * from documenti where nome LIKE CONCAT(?,'%') ORDER BY nome LIMIT 20", @params.str
        {
            json: {
                success: true
                comune: res
            }
        }
