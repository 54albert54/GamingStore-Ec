//
//  OnboardingContainer.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/18/24.
//

import SwiftUI

struct OnboardingContainer: View {
    var body: some View {
    
            TabView{
                ForEach(OnboardingModels.firstPreview ){ screen in
                    OnboardingView(data: screen)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .ignoresSafeArea()
        }
    }


#Preview {
    OnboardingContainer()
}
