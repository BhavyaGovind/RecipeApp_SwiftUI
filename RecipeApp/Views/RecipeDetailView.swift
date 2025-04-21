import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                AsyncImage(url: URL(string: "https://www.coles.com.au\(recipe.dynamicThumbnail)")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    Color.gray.frame(height: 200)
                }
                
                Text(recipe.dynamicTitle)
                    .font(.largeTitle)
                    .bold()
                Text(recipe.dynamicDescription)
                    .font(.body)
                // Ingredients Section
                if !recipe.ingredients.isEmpty {
                    Text("Ingredients")
                        .font(.title2)
                        .bold()
                        .padding(.top, 12)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            Text("• \(item.ingredient)")
                                .font(.body)
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            
        }
        .navigationTitle("Recipe")
    }
}
