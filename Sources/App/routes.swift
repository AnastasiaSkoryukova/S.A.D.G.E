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
    guard let selected = req.parameters.get("citt", as: String.self) else {
            throw Abort(.badRequest)
        }
        let città = try await Cities.query(on: req.db)
            .filter(\.$city == selected)
            .all(\.$population)
        
        let population = città.joined(separator: "")
        
        return "The city has \(population) inhabitants"
    }

    try app.register(collection: CitiesController())
}
