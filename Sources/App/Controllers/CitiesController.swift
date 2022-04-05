import Fluent
import Vapor

struct CitiesController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let cities = routes.grouped("cities")
        cities.get(use: index)
        cities.post(use: create)
        cities.group(":citiesID") { cities in
            cities.delete(use: delete)
        }
    }

    func index(req: Request) async throws -> [Cities] {
        try await Cities.query(on: req.db).all()
    }

    func create(req: Request) async throws -> Cities {
        let cities = try req.content.decode(Cities.self)
        try await cities.save(on: req.db)
        return cities
    }

    func delete(req: Request) async throws -> HTTPStatus {
        guard let cities = try await Cities.find(req.parameters.get("citiesID"), on: req.db) else {
            throw Abort(.notFound)
        }
        try await cities.delete(on: req.db)
        return .ok
    }
}
