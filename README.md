🍽️ Recipe App
A SwiftUI-based iOS application that displays a collection of recipes in a beautiful, responsive grid view. Tapping on a recipe navigates the user to a detailed screen showcasing the recipe's title, description, image, and ingredients.

📱 Features
✅ Built using SwiftUI and MVVM architecture

🧩 Clean and reusable components

🔍 Fetches and displays recipe data from local JSON

🖼 Asynchronous image loading with graceful placeholders

🧾 Displays recipe details including:

Title

Description

Thumbnail image

Ingredients list


🛠 Tech Stack
Swift 5

SwiftUI

MVVM

Combine

AsyncImage for image loading

NavigationStack for navigation

📂 Project Structure
pgsql
Copy
Edit
├── Models/
│   └── Recipe.swift
├── ViewModels/
│   └── RecipeListViewModel.swift
├── Views/
│   ├── RecipeListView.swift
│   └── RecipeDetailView.swift
├── Assets/
│   └── recipes.json
└── ContentView.swift
📦 Installation
Clone the repository

Open in Xcode

Run on a simulator or a real device

bash
Copy
Edit
git clone https://github.com/yourusername/RecipeApp.git
open RecipeApp.xcodeproj
💡 Make sure the recipes.json file is added to your project bundle.

🚧 Upcoming Improvements
Animated overlay-style detail view

Favorites and bookmarking

Search functionality

Loading indicator and error handling
