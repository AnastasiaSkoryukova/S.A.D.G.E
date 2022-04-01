import Fluent
import Vapor

struct TodoController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let cities = routes.grouped("cities")
        cities.get(use: index)
        cities.post(use: create)
        cities.group(":citiesID") { todo in
            todo.delete(use: delete)
        }
    }

    func index(req: Request) async throws -> [Cities] {
        try await Cities.query(on: req.db).all()
    }

    func create(req: Request) async throws -> Cities {
        let todo = try req.content.decode(Cities.self)
        try await todo.save(on: req.db)
        return todo
    }

    func delete(req: Request) async throws -> HTTPStatus {
        guard let todo = try await Cities.find(req.parameters.get("citiesID"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await todo.delete(on: req.db)
        return .ok
    }
}
