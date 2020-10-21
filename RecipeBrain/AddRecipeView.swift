//
//  AddRecipeView.swift
//  RecipeBrain
//
//  Created by Marlene Sophie Pfänder on 21.10.20.
//  Copyright © 2020 Marlene Pfänder. All rights reserved.
//

import SwiftUI

struct AddRecipeView: View {
    @State var title: String = ""
    @State var link: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Add Recipe")
                .font(.title)
                .bold()
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding()
            TextField("Recipe Title", text: $title)
                .padding()
            TextField("Link", text: $link)
                .padding()
            Spacer()
            Button(action: addRecipe)
            { HStack {
                Image(systemName: "plus")
                Text("Add")
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

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
