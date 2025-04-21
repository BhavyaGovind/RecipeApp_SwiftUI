import Foundation

class RecipeListViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    
    init() {
        loadRecipes()
    }
    
    private func loadRecipes() {
        guard let url  = Bundle.main.url(forResource: "recipes", withExtension: "json") else {
            print("recipes.json not found")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode(RecipeResponse.self, from: data)
            self.recipes = decoded.recipes
        } catch {
            print("Error loading JSON: \(error)")
        }
    }
}
