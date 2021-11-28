//
//  ModelMVVM.swift
//  ImageWithCats
//
//  Created by Илья Новиков on 27.11.2021.
//

import Foundation
import SwiftUI

struct CatsInfo: Identifiable, Hashable {
    var id = UUID()
    var name: String
    
}

struct Cats: View {
    var cats: CatsInfo
    var body: some View {
        Image(cats.name)
            .resizable()
            .frame(width: 300, height: 300, alignment: .center)
            .padding(20)
    }
}

