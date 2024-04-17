//
//  CartButto.swift
//  Rickmorty
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

struct CartButton: View {
    @EnvironmentObject var cartManager:CartEcomesViewModel
    var numberOfProducts:Int {
        cartManager.cartProducts.count

    }
    var body: some View {
        ZStack(alignment:.topTrailing) {
            Image(systemName: "bag.fill")
                .padding(5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundStyle(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
            }
        }
    }
}

#Preview {
 
        CartButton()
            .environmentObject(CartEcomesViewModel())

    
}

