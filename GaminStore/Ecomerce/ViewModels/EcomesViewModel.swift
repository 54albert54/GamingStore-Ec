//
//  EcomesViewModel.swift
//  Rickmorty
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import Foundation

class CartEcomesViewModel :ObservableObject {
    
    @Published private(set) var cartProducts = [EcommerseProducts]()
    @Published var historyRecord = [HistoryModels]()
    
    @Published var cartTotal:Int = 0
    
    func addToCardt (product:EcommerseProducts){
        let isAdded =  cartProducts.contains(product)
        if !isAdded  {cartProducts.append(product)
            cartTotal += product.price
        }
        
    }
    
    func removeCartProducts(product:EcommerseProducts){
        cartProducts  = cartProducts.filter{ $0.id != product.id }
        cartTotal -= product.price
    }
    func completedOrder(){
        var createdOrder = HistoryModels(listItems: cartProducts.map{ $0.name }, totalOfOrden: cartTotal)
        historyRecord.append(createdOrder)
        cartTotal = 0
        cartProducts.removeAll()
        
    }

    
}
