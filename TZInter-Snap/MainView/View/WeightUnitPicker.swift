//
//  WeightUnitPicker.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 26.08.2024.
//

import SwiftUI

struct WeightUnitPicker: View {
    @State private var selectedUnit = 1
    let segments = ["Шт", "Кг"]
    
    var body: some View {
        Picker("Выбор единицы", selection: $selectedUnit) {
            ForEach(0..<segments.count, id: \.self) { index in
                Text(segments[index])
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}
