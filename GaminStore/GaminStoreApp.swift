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
    @AppStorage("isOnboarding") var isOnboarding = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingContainer()
            }else{
                NavigationStack{
                    EcommerceApp()
                        .environmentObject(vm)
                }
            }
            
           
            
//            Test()
          
        }
    }
}
