//
//  ProductDetailsView.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI
import Kingfisher

struct ProductDetailsView: View {
    var product: EcommerseProducts
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack(alignment:.leading){
                    ZStack(alignment: .topTrailing){
                        KFImage(URL(string: product.image))
                            .resizable()
                            .ignoresSafeArea()
                            .frame(height: 320)
                            .frame(maxWidth: .infinity)
                            .offset(y:-15)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25 , height: 25)
                            .padding(.top , 60)
                            .padding(.trailing, 30)
                            .foregroundStyle(.yellow)
                    }
                    VStack(alignment:.leading ,spacing: 18){
                        VStack(alignment:.leading ) {
                            HStack{
                                Text(product.name)
                                    .font(.title .bold())
                                    .padding(.leading)
                                Spacer()
                                Text("$ \(product.price)")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .padding(.horizontal)
                                    .background(Color.kSecondary)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            HStack(spacing:10){
                                ForEach(0..<5){ _ in
                                    Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                }
                                Text("(4.5)")
                                    .foregroundStyle(.gray)
                                Spacer()
                                Text(product.supplier)
                            }
                            .padding(.vertical)
                            
                            Text("Description")
                                .font(.title2)
                                .padding(.bottom)
                                .font(.title3)
                                .fontWeight(.semibold)
                            Text(product.description)
                                
                            
                            VStack(alignment:.leading) {
                                ForEach(productFacilities , id:\.name){ detail in
                                    Text(detail.name)
                                    HStack{
                                        Spacer()
                                        Text(detail.description)
                                            .font(.footnote)
                                            .fontWeight(.light)
                                    }
                                }
                            }
                            .padding(.top, 10)
                        }
                        .foregroundStyle(.black)
                        .padding()
                        }
                       
                       
                    
                    .background(Color.white)
                    
                    .clipShape(RoundedRectangle(cornerRadius:30))
                    .offset(y:-50)
                    
                    
                    
                }
            }
            
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProductDetailsView(product: EcommerseProducts.dummyData[2])
}
