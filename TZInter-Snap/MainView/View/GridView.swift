//
//  GridView.swift
//  TZInter-Snap
//
//  Created by Даниил Сивожелезов on 25.08.2024.
//

import SwiftUI

struct GridView: View {
    let product: Product
    
    var body: some View {
        GeometryReader(content: { geometry in
            VStack {
                ZStack {
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        
                    VStack {
                        HStack(alignment: .top) {
                            
                            if let tagLabel = product.tagLabel {
                                Text(tagLabel)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 3)
                                    .font(.system(size: 10))
                                    .foregroundStyle(.white)
                                    .background(setColor())
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
                            Text(product.grade)
                            Spacer()
                            if product.isOnSale {
                                Text("25%")
                                    .font(.system(size: 16, weight: .black))
                                    .foregroundStyle(.appRed)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 200)
                
                VStack(alignment: .leading, spacing: 44) {
                    Text(product.name)
                        .font(.system(size: 12))
                    HStack {
                        VStack(alignment: .leading) {
                            Text(String(format: "%.2f", product.discountPrice) + " ₽/кг")
                                .font(.system(size: 17, weight: .bold))
                            Text(String(format: "%.1f", product.price))
                                .font(.system(size: 12))
                                .foregroundStyle(.gray)
                                .strikethrough(true, color: .gray)
                        }
                        Spacer()
                        Button(action: {
                            //
                        }, label: {
                            Image(.cartIcon)
                                .padding(.horizontal, 17)
                                .padding(.vertical, 10)
                                .background(.appGreen)
                                .clipShape(.rect(cornerRadius: 15))
                        })
                    }
                    
                }
                .padding()
                
            }
            .background(.white)
            
            .clipShape(.rect(cornerRadius: 20))
        })
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
