import Fluent
import FluentPostgresDriver
import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) throws {

    app.databases.use(.postgres(
        hostname: "dariovig.ddns.net",
        port: 5432,
        username: "postgres",
        password: "Poiuytre1!",
        database: "postgres"
    ), as: .psql)

    app.migrations.add(CreateCity())

    app.views.use(.leaf)

    try routes(app)
}
