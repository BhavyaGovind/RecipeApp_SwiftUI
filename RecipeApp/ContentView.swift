//
//  ContentView.swift
//  RecipeApp
//
//  Created by Santosh Govind on 4/18/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var recipeViewModel = RecipeListViewModel()
    @State private var selectedRecipe: Recipe?
    
    func didSelectedRecipe(recipe: Recipe) {
        selectedRecipe = recipe
    }
    var body: some View {
        NavigationStack {
            RecipeListView(viewModel: recipeViewModel, didSelect: didSelectedRecipe)
                .padding()
                .navigationDestination(item: $selectedRecipe) { recipe in
                    RecipeDetailView(recipe: recipe)
                }
        }
    }
}

#Preview {
    ContentView()
}
