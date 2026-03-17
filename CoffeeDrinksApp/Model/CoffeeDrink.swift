import Foundation

struct CoffeeDrink: Codable, Identifiable {
    let id = UUID()
    let name: String
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case description
    }
}
