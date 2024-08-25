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
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundStyle(.gray)
                        
                        Spacer()
                        HStack(alignment: .bottom) {
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                            Text(product.grade)
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
//            .shadow(radius: 20)
            .clipShape(.rect(cornerRadius: 20))
        })
        
    }
}
