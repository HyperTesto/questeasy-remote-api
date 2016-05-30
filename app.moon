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
        res = db.query "select * from comuni where nome LIKE CONCAT(?,'%') LIMIT 20", util.unescape @params.ricerca

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
        res = db.query "select * from comuni where nome = ?", util.unescape @params.name
        {
            json: {
                success: true
                comune: res
            }
        }
    "/api/v1/documenti/:str": =>
        res = db.query "select * from documenti where nome LIKE CONCAT(?,'%') ORDER BY nome", util.unescape @params.str
        {
            json: {
                success: true
                documenti: res
            }
        }
    "/api/v1/cittadinanza/:str": =>
        res = db.query "select nome, id from comuni where nome LIKE CONCAT(?,'%') AND isState=1 ORDER BY nome", util.unescape @params.str
        {
            json: {
                success: true
                stati: res
            }
        }
    
    "/api/v1/stats/": respond_to {
      GET: =>
        "Show usage stats."

      POST: =>
        "Update stats to DB"
    }
