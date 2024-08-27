//
//  ListView.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import SwiftUI

struct ListCellView: View {
    @StateObject var viewModel: CellViewModel
    
    var body: some View {
        GeometryReader(content: { geometry in
            HStack(spacing: 5) {
                ZStack {
                    Image(viewModel.product.image)
                        .resizable()
                        .scaledToFit()
                    VStack {
                        VStack(alignment: .leading) {
                            if let tagLabel = viewModel.product.tagLabel {
                                Text(tagLabel)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 3)
                                    .font(.system(size: 10))
                                    .foregroundStyle(.white)
                                    .background(viewModel.setColor())
                                    .clipShape(.rect(cornerRadius: 5))
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            if viewModel.product.isOnSale {
                                Text("25%")
                                    .font(.system(size: 16, weight: .black))
                                    .foregroundStyle(.appRed)
                            }
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            HStack(spacing: 3) {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                Text(viewModel.product.grade)
                                Text("| " + viewModel.product.reviewCount)
                                    .foregroundStyle(.gray)
                                
                            }
                            .font(.system(size: 12))
                
                            Text(viewModel.product.name)
                                .font(.system(size: 12))
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
                        .foregroundStyle(.gray)
                    }
                    Spacer()
                    
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
                        }
                    }
                }
                .frame(maxHeight: .infinity)
            }
            .padding(.vertical, 10)
        })
        .frame(height: 180)
    }
}
