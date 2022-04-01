import Fluent
import FluentPostgresDriver
import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(.postgres(
        hostname: "localhost",
        port: 5432,
        username: "postgres",
        password: "somePassword",
        database: "postgres"
    ), as: .psql)

    app.migrations.add(CreateCity())

    app.views.use(.leaf)

    

    // register routes
    try routes(app)
}
