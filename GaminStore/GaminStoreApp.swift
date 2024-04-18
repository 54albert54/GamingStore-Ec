//
//  GaminStoreApp.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

@main
struct GaminStoreApp: App {
    @StateObject var vm = CartEcomesViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                EcommerceApp()
                    .environmentObject(vm)
            }
            
//            Test()
          
        }
    }
}
