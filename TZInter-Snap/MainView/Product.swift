//
//  Model.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    var tegLabel: String?
    let name: String
    let grade: String
    let reviewCount: String
    let image: String
    let price: Double
    let discountPrice: Double
    
    static func maceMockData() -> [Product] {
        [Product(tegLabel: "Удар по ценам", name: "сыр Ламбер 500/0 230г", grade: "4.1", reviewCount: "19 отзывов", image: "product1", price: 199.0, discountPrice: 99.90),
         Product(name: "Энергетический Напит", grade: "4.1", reviewCount: "19 отзывов", image: "product2", price: 199.0, discountPrice: 99.90),
         Product(name: "Салат Овощной с Крабовыми Палочками", grade: "4.1", reviewCount: "19 отзывов", image: "product3", price: 199.0, discountPrice: 99.90),
         Product(name: "Дорадо Охлажденная Непотрошеная 300-400г", grade: "4.1", reviewCount: "19 отзывов", image: "product4", price: 199.0, discountPrice: 99.90),
         Product(tegLabel: "Новинки", name: "Ролл Маленькая Япония 216г", grade: "4.1", reviewCount: "19 отзывов", image: "product5", price: 199.0, discountPrice: 99.90),
         Product(tegLabel: "Цена по карте", name: "Огурцы тепличные cадово-огородные", grade: "4.1", reviewCount: "19 отзывов", image: "product6", price: 199.0, discountPrice: 99.90),
         Product(tegLabel: "Новинки", name: "Манго Кео", grade: "4.1", reviewCount: "19 отзывов", image: "product7", price: 199.0, discountPrice: 99.90),
         Product(name: "Салат Овощной с Крабовыми Палочками", grade: "4.1", reviewCount: "19 отзывов", image: "product8", price: 199.0, discountPrice: 99.90),
         Product(name: "Салат Овощной с Крабовыми Палочками", grade: "4.1", reviewCount: "19 отзывов", image: "product9", price: 199.0, discountPrice: 99.90),
         Product(tegLabel: "Удар по ценам", name: "Масло Слобода Рафинированное 1,8л", grade: "4.1", reviewCount: "19 отзывов", image: "product10", price: 199.0, discountPrice: 99.90),
         Product(name: "Салат Овощной с Крабовыми Палочками", grade: "4.1", reviewCount: "19 отзывов", image: "product11", price: 199.0, discountPrice: 99.90),
         Product(tegLabel: "Новинки", name: "Макаронные Изделия SPAR Спагетти 450г", grade: "4.1", reviewCount: "19 отзывов", image: "product12", price: 199.0, discountPrice: 99.90),
         Product(name: "Огурцы тепличные cадово-огородные", grade: "4.1", reviewCount: "19 отзывов", image: "product13", price: 199.0, discountPrice: 99.90),
         Product(tegLabel: "Цена по карте", name: "Огурцы тепличные cадово-огородные", grade: "4.1", reviewCount: "19 отзывов", image: "product14", price: 199.0, discountPrice: 99.90),
        ]
    }
}
