//
//  OnboardingModels.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/18/24.
//

import Foundation

struct OnboardingModels:Identifiable  {
    var id = UUID()
    var title:String
    var description:String
    var image:String
    
    static var  firstPreview:[OnboardingModels] = [
        OnboardingModels(title: "First Page", description: "Show that is posible", image: "billboard"),
        OnboardingModels(title: "Second Page", description: "Show that is posible", image: "GameStore"),
        OnboardingModels(title: "Third Page", description: "Show that is posible", image: "store"),
    ]
}
