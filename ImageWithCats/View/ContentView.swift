//
//  ContentView.swift
//  ImageWithCats
//
//  Created by Илья Новиков on 27.11.2021.
//

import SwiftUI


struct ContentView: View {
    
    @State var model = ViewModel()
    @State var isSelected: Bool = false
    
    var body: some View {
        
        model.fillArray()
        return NavigationView{
            List{
                ForEach(0..<model.arrayCats.count) { imageIdx in
                    model.arrayCats[imageIdx]
                }
                .onTapGesture(perform: model.zoomImage)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}

