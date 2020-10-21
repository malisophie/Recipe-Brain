//
//  ContentView.swift
//  RecipeBrain
//
//  Created by Marlene Sophie Pfänder on 22.09.20.
//  Copyright © 2020 Marlene Pfänder. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var recipes: [Recipe]

    var body: some View {
            RecipeList(recipes: recipes)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(recipes: [])
    }
}
