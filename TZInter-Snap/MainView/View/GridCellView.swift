//
//  GridView.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import SwiftUI

struct GridCellView: View {
    @StateObject var viewModel: CellViewModel
    
    var body: some View {
        GeometryReader(content: { geometry in
            VStack {
                ZStack {
                    Image(viewModel.product.image)
                        .resizable()
                        .scaledToFit()
                    VStack {
                        HStack(alignment: .top) {
                            if let tagLabel = viewModel.product.tagLabel {
                                Text(tagLabel)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 3)
                                    .font(.system(size: 10))
                                    .foregroundStyle(.white)
                                    .background(viewModel.setColor())
                                    .clipShape(.rect(cornerRadius: 5))
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .trailing, spacing: 10) {
                                Button(action: {
                                    //
                                }, label: {
                                    Image(systemName: "list.bullet.clipboard")
                                })
                                
                                Button(action: {
                                    //
                                }, label: {
                                    Image(systemName: "heart")
                                })
                                
                            }
                            .padding()
                            .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        
                        HStack(alignment: .bottom) {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                            Text(viewModel.product.grade)
                            Spacer()
                            if viewModel.product.isOnSale {
                                Text("25%")
                                    .font(.system(size: 16, weight: .black))
                                    .foregroundStyle(.appRed)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 145)
                .background(.white)
                
                VStack(alignment: .leading) {
                    Text(viewModel.product.name)
                        .font(.system(size: 12))
                    HStack {
                        if viewModel.isAddedToCard {
                            VStack(spacing: 5) {
                                WeightUnitPicker(selectedUnit: $viewModel.selectedUnit)
                                HStack {
                                    Button(action: {
                                        viewModel.isAddedToCard = false
                                    }, label: {
                                        Image(systemName: "minus")
                                    })
                                    Spacer()
                                    VStack {
                                        Text(viewModel.selectedUnit == 0 ? "1 шт" : "0.1 кг")
                                        
                                        Text("~5.92")
                                            .font(.system(size: 12))
                                    }
                                    .font(.system(size: 17))
                                    Spacer()
                                    Button(action: {
                                        viewModel.isAddedToCard = false
                                    }, label: {
                                        Image(systemName: "plus")
                                    })
                                    
                                }
                                .padding(.horizontal, 10)
                                .foregroundStyle(.white)
                                .background(.appGreen)
                                .clipShape(.rect(cornerRadius: 40))
                            }
                        } else {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(String(format: "%.2f", viewModel.product.discountPrice) + " ₽/кг")
                                        .font(.system(size: 17, weight: .bold))
                                    Text(String(format: "%.1f", viewModel.product.price))
                                        .font(.system(size: 12))
                                        .foregroundStyle(.gray)
                                        .strikethrough(true, color: .gray)
                                }
                                
                                Spacer()
                                
                                Button(action: {
                                    viewModel.isAddedToCard = true
                                }, label: {
                                    Image(.cartIcon)
                                        .padding(.horizontal, 17)
                                        .padding(.vertical, 10)
                                        .background(.appGreen)
                                        .clipShape(.rect(cornerRadius: 15))
                                })
                            }
                            .padding(.top, 35)
                        }
                    }
                    
                }
                .padding()
            }
            .background(.white)
            .clipShape(.rect(cornerRadius: 20))
        })
    }
}
