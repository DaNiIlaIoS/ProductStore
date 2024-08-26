//
//  GridViewModel.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import SwiftUI

final class GridViewModel: ObservableObject {
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
