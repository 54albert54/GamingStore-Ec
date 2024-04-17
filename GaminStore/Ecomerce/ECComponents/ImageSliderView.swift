//
//  ImageSliderWiew.swift
//  Rickmorty
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

import Kingfisher

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var  slider:[String] = EcommerseProducts.onlyImages
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack {
                KFImage(URL(string: slider[currentIndex]))
                    .resizable()
                    .frame( height: 180)
                  
                .scaledToFit()
                   
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            }
            HStack{
                ForEach( 0..<slider.count ){ ind  in
                    Circle()
                        .fill(self.currentIndex == ind ? Color.kPrimary : Color.kSecondary)
                        .frame(width: 15, height: 15)
                        
                    
                }
            }
            .padding()
           
            
        }
        .padding(.horizontal)
        .onAppear(perform: {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                if self.currentIndex + 1  == self.slider.count{
                    self.currentIndex = 0
                }else {
                    self.currentIndex += 1
                }
                
            }
        })
    }
}

#Preview {
    ImageSliderView()
}
