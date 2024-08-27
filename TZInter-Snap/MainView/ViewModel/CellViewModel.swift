//
//  GridViewModel.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import SwiftUI

final class CellViewModel: ObservableObject {
    @Published var isAddedToCard: Bool = false
    @Published var quantity: Double = 0.1
    @Published var selectedUnit = 1
    
    let product: Product
    
    init(product: Product) {
        self.product = product
    }
    
    func setColor() -> Color {
        switch product.tagLabel {
        case "Удар по ценам":
            return .appPink
        case "Новинки":
            return .appPurple
        case "Цена по карте":
            return .appLightGreen
        default:
            return .white
        }
    }
}
