//
//  DetailView.swift
//  RecipeBrain
//
//  Created by Marlene Sophie Pfänder on 24.09.20.
//  Copyright © 2020 Marlene Pfänder. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var recipe: Recipe

    var body: some View {
        VStack {
            recipe.image
            Text("Link")
                .font(.title2)
                .bold()
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding()
            Text(recipe.link)
                .padding(.horizontal)
            Spacer()
        }
        .padding(.vertical)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(recipe: Recipe(id: "23984", name: "Test Recipe", link: "https://elavegan.com/asian-vegetable-stir-fry-noodles/", image: Datahandler.getImage("https://elavegan.com/asian-vegetable-stir-fry-noodles/")))
    }
}
