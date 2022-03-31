import Fluent
import Vapor

final class Todo: Model, Content {
    static let schema = "public"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "city")
    var city: String
    
    @Field(key: "lat")
    var latitude: String
    
    @Field(key: "lng")
    var longitude: String
    
    @Field(key: "country")
    var country: String
    
    @Field(key: "iso2")
    var iso2: String
    
    @Field(key: "admin_name")
    var adminName: String
    
    @Field(key: "capital")
    var capital: String
    
    @Field(key: "population")
    var population: String
    
    init() { }

    init(id: UUID? = nil, city: String, latitude: String, longitude: String, country: String, iso2: String, adminName: String, capital: String, pupulation: String) {
        self.id = id
        self.city = city
        self.latitude = latitude
        self.longitude = longitude
        self.country = country
        self.iso2 = iso2
        self.adminName = adminName
        self.capital = capital
        self.population = population
    }
}
