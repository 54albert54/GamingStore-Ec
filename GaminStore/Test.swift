//
//  Test.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

struct Test: View {
    @State var direction = true
   
    var body: some View {
       
        CustomViewFunc()
      
            ZStack{
                
                VStack{
                    
                    Text("Attack")
                    
                        .font(.title)
                        .foregroundStyle(.black)
                }
                .padding()
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                VStack{
                    Text("Attack")
                    
                        .font(.title)
                        .foregroundStyle(!direction ? Color.gray : Color.black)
                }
                .padding()
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 20))
               
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 2)
                        .shadow(color: .black, radius: 10 , x: 12)
                }
                .offset(x: direction ? 1  :  0 ,y: direction ? -7  : 0)
                .animation(.easeInOut, value: direction)

        }
            .onTapGesture {
                direction.toggle()
                Timer.scheduledTimer(withTimeInterval: 0.4, repeats: false) { _ in
                    direction.toggle()
                }
            }

    }
}

#Preview {
    Test()
}

func CustomViewFunc() -> some View {
    
    VStack {
        
        Text("texto sin mas ")
       
            .font(.title)
            .foregroundStyle(.kaCtion2)
    }
}


