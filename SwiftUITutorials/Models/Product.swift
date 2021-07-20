//
//  Product.swift
//  SwiftUITutorials
//
//  Created by Vahid Sayad on 7/17/21.
//

import Foundation

struct Product: Identifiable {
    let id: Int
    let name: String
    let price: Double
    let color: String
    let width: Double
    let height: Double
    let image: String
    
    var roundedPrice: String {
        return String(format: "%.2f", price)
    }
    
    var size: String {
        return String(format: "%.1f x %.1f", width, height)
    }
}

extension Product {
    static func all() -> [Product] {
        return [
            Product(id: 1, name: "Classic", price: 800, color: "#2333bb", width: 800, height: 450, image: "classic"),
            Product(id: 2, name: "Face Off", price: 1200, color: "#ffeebb", width: 1000, height: 500, image: "face-off"),
            Product(id: 3, name: "Garden", price: 350, color: "#e3e3e3", width: 400, height: 200, image: "garden"),
            Product(id: 4, name: "Pirsok", price: 400, color: "#3eff55", width: 600, height: 100, image: "pirsok"),
            Product(id: 5, name: "Dalan", price: 700, color: "#ff33bb", width: 700, height: 400, image: "dalan"),
            Product(id: 6, name: "Garden", price: 350, color: "#e3e3e3", width: 400, height: 200, image: "garden"),
            Product(id: 7, name: "Pirsok", price: 400, color: "#3eff55", width: 600, height: 100, image: "pirsok"),
            Product(id: 8, name: "Dalan", price: 700, color: "#ff33bb", width: 700, height: 400, image: "dalan")
        ]
    }
}
