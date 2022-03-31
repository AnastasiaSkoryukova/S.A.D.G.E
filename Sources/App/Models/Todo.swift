import Fluent
import Vapor

final class Todo: Model, Content {
    static let schema = "todos"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "city")
    var city: String
    
    @Field(key: "country")
    var country: String
    
    @Field(key: "population")
    var population: String

    init() { }

    init(id: UUID? = nil, title: String) {
        self.id = id
        self.city = city
        self.country = country
        self.population = population
        
    }
}
