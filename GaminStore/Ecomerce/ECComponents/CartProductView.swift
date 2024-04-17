//
//  ProductDectailView.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI
import Kingfisher

struct CartProductView: View {
    @EnvironmentObject var cartManager:CartEcomesViewModel
       

    var product:EcommerseProducts
        
    var body: some View {
        VStack {
            HStack(spacing: 20){
                KFImage(URL(string: product.image))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70 )
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                VStack(alignment:.leading , spacing: 5){
                    Text(product.name)
                        .bold()
                    Text("$ \(product.price)")
                        .bold()
                    
                }
                
                .padding(.leading)
                Spacer()
                    
                Image(systemName: "trash")
                    .foregroundStyle(.red)
                    .onTapGesture {
                        cartManager.removeCartProducts(product: product)
                    }
            }
            .foregroundStyle(Color.black)
            .padding()
            .background(Color.kSecondary)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        .padding(.horizontal)
    }
}

#Preview {
    CartProductView(product: EcommerseProducts.dummyData[3])
        .environmentObject(CartEcomesViewModel())
}
