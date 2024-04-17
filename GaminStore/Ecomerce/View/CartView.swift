//
//  CartView.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject  var cartManager:CartEcomesViewModel
    
    
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
           
            VStack{
                
                
                if cartManager.cartProducts.count < 1 {
                    VStack {
                        Spacer()
                        Text("nothing yet")
                            .foregroundStyle(Color.black)
                        
                        Spacer()
                    }
                    .frame(width: 400 )
                    
                }else{
                    HStack{
                        Text("Your Total is ")
                        Spacer()
                        Text("$\(cartManager.cartTotal)")
                    }
                    .foregroundStyle(Color.black)
                    .padding()
                    ScrollView(.vertical) {
                        VStack{
                            ForEach(cartManager.cartProducts , id: \.id){ product in
                                CartProductView(product: product)
                            }
                            
                        }
                        
                        
                    }
                    ApplePayButton {
                        //
                    }
                    .padding(.bottom, 80)
                    
                }
                
                
            }
            
        }
       // .navigationTitle("Car ")
    }
}

#Preview {
    NavigationStack{
        CartView()
            .environmentObject(CartEcomesViewModel())
    }
    
}