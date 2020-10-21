//
//  RecipeList.swift
//  RecipeBrain
//
//  Created by Marlene Sophie Pfänder on 24.09.20.
//  Copyright © 2020 Marlene Pfänder. All rights reserved.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]

    var body: some View {
        VStack {
        NavigationView {
        List(recipes) { recipe in
            NavigationLink(
                destination: DetailView(recipe: recipe)) {
                RecipeRow(recipe: recipe)
            }
        }
        .navigationBarTitle(Text("Recipes"))
        }
            Button(action: addRecipe)
            { HStack {
                Image(systemName: "plus")
                Text("Add Recipe")
                    .font(.title)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            }
            .cornerRadius(40)
            .padding()
        }
    }
}

func addRecipe() {

}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(recipes: [])
    }
}
