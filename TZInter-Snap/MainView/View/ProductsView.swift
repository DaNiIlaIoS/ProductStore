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
                        viewModel.isGridView.toggle()
                    }, label: {
                        Image(viewModel.isGridView ? .cardIcon : .listIcon)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 10)
                            .background(Color(.systemGray5))
                            .clipShape(.rect(cornerRadius: 10))
                    })
                }
                .padding(.horizontal, 8)
                
                Divider()
                    .frame(height: 1)
                    .background(Color.gray)
            }
            
            if viewModel.isGridView {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 8) {
                        ForEach(viewModel.products) { product in
                            GridCellView(viewModel: CellViewModel(product: product))
                        }
                        .frame(height: 280)
                    }
                    .padding(.horizontal, 10)
                }
                .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 0)
            } else {
                List(viewModel.products) { product in
                        ListCellView(viewModel: CellViewModel(product: product))
                }
                .listStyle(.inset)
            }
        }
    }
}

#Preview {
    ProductsView()
}
