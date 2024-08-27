//
//  Model.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    var tagLabel: String?
    let name: String
    let grade: String
    let reviewCount: String
    let image: String
    let price: Double
    let discountPrice: Double
    let isOnSale: Bool
    
    static func maceMockData() -> [Product] {
        [Product(tagLabel: "Удар по ценам", name: "сыр Ламбер 500/0 230г", grade: "4.1", reviewCount: "19 отзывов", image: "product1", price: 199.0, discountPrice: 99.90, isOnSale: false),
         Product(name: "Энергетический Напит", grade: "4.1", reviewCount: "19 отзывов", image: "product2", price: 199.0, discountPrice: 39.90, isOnSale: false),
         Product(name: "Салат Овощной с Крабовыми Палочками", grade: "4.1", reviewCount: "19 отзывов", image: "product3", price: 199.0, discountPrice: 92.90, isOnSale: false),
         Product(name: "Дорадо Охлажденная Непотрошеная 300-400г", grade: "4.1", reviewCount: "19 отзывов", image: "product4", price: 199.0, discountPrice: 46.90, isOnSale: true),
         Product(tagLabel: "Новинки", name: "Ролл Маленькая Япония 216г", grade: "4.1", reviewCount: "19 отзывов", image: "product5", price: 199.0, discountPrice: 54.90, isOnSale: false),
         Product(tagLabel: "Цена по карте", name: "Огурцы тепличные cадово-огородные", grade: "4.1", reviewCount: "19 отзывов", image: "product6", price: 19.0, discountPrice: 99.90, isOnSale: false),
         Product(tagLabel: "Новинки", name: "Манго Кео", grade: "4.1", reviewCount: "19 отзывов", image: "product7", price: 199.0, discountPrice: 29.90, isOnSale: true),
         Product(name: "Салат Овощной с Крабовыми Палочками", grade: "4.1", reviewCount: "19 отзывов", image: "product8", price: 199.0, discountPrice: 68.90, isOnSale: false),
         Product(name: "Салат Овощной с Крабовыми Палочками", grade: "4.1", reviewCount: "19 отзывов", image: "product9", price: 199.0, discountPrice: 9.90, isOnSale: false),
         Product(tagLabel: "Удар по ценам", name: "Масло Слобода Рафинированное 1,8л", grade: "4.1", reviewCount: "19 отзывов", image: "product10", price: 199.0, discountPrice: 12.90, isOnSale: false),
         Product(name: "Салат Овощной с Крабовыми Палочками", grade: "4.1", reviewCount: "19 отзывов", image: "product11", price: 199.0, discountPrice: 54.90, isOnSale: false),
         Product(tagLabel: "Новинки", name: "Макаронные Изделия SPAR Спагетти 450г", grade: "4.1", reviewCount: "19 отзывов", image: "product12", price: 199.0, discountPrice: 9.90, isOnSale: false),
         Product(name: "Огурцы тепличные cадово-огородные", grade: "4.1", reviewCount: "19 отзывов", image: "product13", price: 199.0, discountPrice: 9.90, isOnSale: false),
         Product(tagLabel: "Цена по карте", name: "Огурцы тепличные cадово-огородные", grade: "4.1", reviewCount: "19 отзывов", image: "product14", price: 199.0, discountPrice: 69.90, isOnSale: false),
        ]
    }
}
