//
//  ContentView.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import SwiftUI

struct ProductsView: View {
    @StateObject private var viewModel = ProductViewModel()
    private let columns: [GridItem] = [GridItem(.flexible(), spacing: 5), GridItem(.flexible(), spacing: 5)]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 1) {
                VStack {
                    Button(action: {
                        //
                    }, label: {
                        Image(.cardIcon)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 10)
                            .background(Color(.systemGray5))
                            .clipShape(.rect(cornerRadius: 10))
                    })
                }
                .padding(.horizontal, 8)
                
                Divider()
                    .frame(height: 1) // высота линии в 1 пункт
                    .background(Color.gray)
            }
            ScrollView {
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(viewModel.products) { product in
                        if viewModel.isGridView {
                            GridView(viewModel: GridViewModel(product: product))
                        } else {
                            
                        }
                    }
                    .frame(height: 280)
                }
                .padding(.horizontal, 10)
            }
            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 0)
        }
    }
}

#Preview {
    ProductsView()
}
