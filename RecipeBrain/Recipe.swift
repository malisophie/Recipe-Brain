//
//  Recipe.swift
//  RecipeBrain
//
//  Created by Marlene Sophie Pfänder on 24.09.20.
//  Copyright © 2020 Marlene Pfänder. All rights reserved.
//

import Foundation
import SwiftUI

struct Recipe: Identifiable {
    var id: String
    var name: String
    var link: String
    var image: Image?
}
