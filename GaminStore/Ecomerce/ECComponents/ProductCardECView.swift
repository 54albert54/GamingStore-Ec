//
//  ProductCardECView.swift
//  Rickmorty
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI
import Kingfisher

struct ProductCardECView: View {
    @EnvironmentObject var cartManager:CartEcomesViewModel
    var canAdd:Bool{
        cartManager.cartProducts.contains(product)
    }
    var product:EcommerseProducts
    var body: some View {
        ZStack{
            Color.kSecondary
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment:.leading) {
                    KFImage(URL(string: product.image))
                        .resizable()
                        .frame(width: 175 , height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    Text(product.name)
                        .font(.headline)
                        .padding(.vertical,1)
                        .foregroundStyle(Color.black)
                    Text(product.supplier)
                        .foregroundStyle(.gray)
                        .font(.caption)
                        .padding(.vertical, 0.5)
                    Text("$\(product.price)")
                        .bold()
                        .foregroundStyle(Color.black)
                }
                
              
                Button {
                    if !canAdd{
                        cartManager.addToCardt(product: product)
                    }
                    
                    
                } label: {
                    Image(systemName: !canAdd ? "plus.circle.fill" : "checkmark.seal.fill")
                        .resizable()
                        .foregroundStyle(canAdd ? Color.green: Color.kPrimary)
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                }

            }
        }
        .frame(width: 185, height: 260)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ProductCardECView( product: EcommerseProducts.dummyData[0])
        .environmentObject(CartEcomesViewModel())
}
