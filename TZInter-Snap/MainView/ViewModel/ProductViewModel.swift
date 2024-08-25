//
//  ProductViewModel.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import Foundation

final class ProductViewModel: ObservableObject {
    @Published var isGridView: Bool = true
    @Published var products: [Product] = Product.maceMockData()
}
