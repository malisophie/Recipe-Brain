//
//  RecipeRow.swift
//  RecipeBrain
//
//  Created by Marlene Sophie Pfänder on 24.09.20.
//  Copyright © 2020 Marlene Pfänder. All rights reserved.
//

import SwiftUI

struct RecipeRow: View {
    var recipe: Recipe

    var body: some View {
        HStack{
            if let image = recipe.image {
                image
                    .resizable()
                    .frame(width: 50, height: 50)
            } else {
                Image(systemName: "camera")
            }
            Text(recipe.name)
            Spacer()
        }
        .padding()
    }
}

struct RecipeRow_Previews: PreviewProvider {

    static var previews: some View {
        RecipeRow(recipe: Recipe(id: "23984", name: "Test Recipe", link: "https://elavegan.com/asian-vegetable-stir-fry-noodles/", image: Datahandler.getImage("https://elavegan.com/asian-vegetable-stir-fry-noodles/")))
    }
}
