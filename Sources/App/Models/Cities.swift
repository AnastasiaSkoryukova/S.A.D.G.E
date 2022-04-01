import Fluent
import Vapor

final class Cities: Model, Content {
    static let schema:String = "it"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "city")
    var city: String

    @Field(key: "lat")
    var lat: String

    @Field(key: "lng")
    var lng: String
    
    @Field(key: "country")
    var country: String
    
    @Field(key: "iso2")
    var iso2: String

    @Field(key: "admin_name")
    var admin_name: String

    @Field(key: "capital")
    var capital: String

    @Field(key: "population")
    var population: String
    
    @Field(key: "population_proper")
    var population_proper: String
    
    init() { }

    init(id: UUID? = nil, city: String, latitude: String, longitude: String, country: String, iso2: String, adminName: String, capital: String, pupulation: String, pupulation_proper: String
    ) {
        self.id = id
        self.city = city
        self.lat = lat
        self.lng = lng
        self.country = country
        self.iso2 = iso2
        self.admin_name = admin_name
        self.capital = capital
        self.population = population
        self.population = population_proper
    }
}
