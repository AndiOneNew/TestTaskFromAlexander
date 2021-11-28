//
//  ViewModel.swift
//  ImageWithCats
//
//  Created by Илья Новиков on 27.11.2021.
//

import Foundation
import SwiftUI

protocol MvvmViewModelProtocol: class {
    
    func fillArray()
    func zoomImage()
    func openImage()
}

class ViewModel: MvvmViewModelProtocol {
    
    var arrayCats = [Cats]()
    var width: CGFloat = 300
    var height: CGFloat = 300
    
    func fillArray() {
        for index in 0 ..< 7 {
            arrayCats.append(Cats(cats: CatsInfo (name: "cat\(index)")))
        }
    }
    
    func zoomImage() {
        //        var zoomTapped = false
        //        if zoomTapped {
        //            width = 400
        //            height = 400
        //            zoomTapped = true
        //        }
        //        else {
        //            width = 300
        //            height = 300
        //            zoomTapped = false
        //        }
        
    }
    
    func openImage() {
        
    }
    
    
}
