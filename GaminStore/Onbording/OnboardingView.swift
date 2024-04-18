//
//  OnboardingView.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/18/24.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    var data:OnboardingModels
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.kMain  ,Color.kSecondary , Color.kMain ], startPoint: .leading, endPoint: .topTrailing)
                .ignoresSafeArea()
            VStack(spacing:30) {
                Image(data.image)
                    .resizable()
                
                    .scaledToFit()
                
                VStack {
                    Text(data.title)
                    Text(data.description)
                }
                Button(action: {
                    isOnboarding = false
                }
                       , label: {
                    Text("Seguir")
                        .padding(.vertical,10)
                        .padding(.horizontal, 40)
                        .background(Color.blue)
                        .clipShape(Capsule())
                        .overlay {
                            Capsule()
                                
                                .stroke(lineWidth: 1)
                        }
                        
                })
              
            }
        }
       
    }
}

#Preview {
    OnboardingView(data:OnboardingModels.firstPreview[2])
}
