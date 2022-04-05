import Fluent

struct CreateCity: AsyncMigration {
    func prepare(on database: Database) async throws {
        try await database.schema("italy")
            .id()
            .field("city", .string, .required)
            .field("lat", .string, .required)
            .field("lng", .string, .required)
            .field("country", .string, .required)
            .field("iso2", .string, .required)
            .field("admin_name", .string, .required)
            .field("capital", .string, .required)
            .field("population", .string, .required)
//            .field("population_proper", .string, .required)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("italy").delete()
    }
}
