import Fluent
import Vapor

final class Todo: Model, Content {
    static let schema = "public"
    
    @ID(key: .id)
    var id: Int

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

    init(title: String) {
        self.title = title
    }
}
