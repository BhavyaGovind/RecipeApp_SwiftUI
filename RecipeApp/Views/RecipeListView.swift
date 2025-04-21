import SwiftUI

struct RecipeListView: View {
    @ObservedObject var viewModel: RecipeListViewModel
    var didSelect: (Recipe) -> Void

    let columns = [
        GridItem(.flexible(), spacing: 30),
        GridItem(.flexible(), spacing: 30)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(viewModel.recipes) { recipe in
                    Button {
                        didSelect(recipe)
                    } label: {
                        VStack(alignment: .leading, spacing: 0) {
                            AsyncImage(url: URL(string: "https://www.coles.com.au\(recipe.dynamicThumbnail)")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 120)
                                    .frame(maxWidth: .infinity) 
                                    .clipped()
                            } placeholder: {
                                Color.gray
                                    .frame(height: 120)
                                    .frame(maxWidth: .infinity)
                            }

                            Text(recipe.dynamicTitle)
                                .font(.headline)
                                .lineLimit(2)
                                .padding(8)
                        }
                        .frame(maxWidth: .infinity) 
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Recipes")
    }
}
