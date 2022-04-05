import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("index", ["title": "Hello Vapor!"])
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.get("random", ":number") { req -> String in
        guard let number = req.parameters.get("number", as: Int.self) else {
            throw Abort(.badRequest)
        }
        return "\(Int.random(in: 1..<number))"
    }
    
    
    app.get(":citt") { req -> String in
//        guard let username = req.data[""]?.string else {
//          return Response(status: .badRequest)
    guard let selected = req.parameters.get("citt", as: String.self) else {
            throw Abort(.badRequest)
        }
        let città = try await Cities.query(on: req.db)
            .filter(\.$city == selected)
//            .sort(\.$)
//            .with(\.$)
//            .all()
            .all(\.$population)
        
//        print(città)
        
        let population = città.joined(separator: "")

//        let selected = città.population
        return "The city has \(population) inhabitants"
//        }
    }
    
    
//    app.get("try") { req in
//        return Element.query(on: .it).all()
//        { messages in
//            return
//        }
//    }

    try app.register(collection: CitiesController())
}
