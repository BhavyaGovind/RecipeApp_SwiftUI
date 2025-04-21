import Foundation

struct RecipeResponse: Codable {
    let recipes: [Recipe]
}

struct Recipe: Identifiable,Hashable, Codable {
    var id: UUID = UUID()
    let dynamicTitle: String
    let dynamicDescription: String
    let dynamicThumbnail: String
    let dynamicThumbnailAlt: String
    let recipeDetails: RecipeDetails
    let ingredients: [Ingredient]
    
    enum CodingKeys: String, CodingKey {
            case dynamicTitle, dynamicDescription, dynamicThumbnail, dynamicThumbnailAlt, recipeDetails, ingredients
        }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(dynamicTitle)
        hasher.combine(dynamicDescription)
        hasher.combine(dynamicThumbnail)
        hasher.combine(dynamicThumbnailAlt)  
    }
    
    static func ==(lhs: Recipe, rhs: Recipe) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Ingredient: Codable, Hashable {
    let ingredient: String
}
struct RecipeDetails: Codable, Hashable {
    let amountLabel: String
    let amountNumber: Int
    let prepLabel, prepTime: String
    let prepNote: String?
    let cookingLabel, cookingTime: String
    let cookTimeAsMinutes, prepTimeAsMinutes: Int
}
