//
//  ShowAllProducts.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

struct AllProducts: View {
    @EnvironmentObject var cartManager:CartEcomesViewModel
    var column = [GridItem(.adaptive(minimum: 160) ,spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: column, spacing: 20){
                    ForEach(EcommerseProducts.dummyData , id:\.id){ product in
                        NavigationLink {
                            ProductDetailsView(product: product)
                        } label: {
                            ProductCardECView(product: product)
                        }

                    }
                }
            }
            .navigationTitle("All Items")
        }
        
    }
}

#Preview {
    AllProducts()
        .environmentObject(CartEcomesViewModel())
}
