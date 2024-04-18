//
//  HistoryView.swift
//  GaminStore
//
//  Created by Angel alberto Bernechea on 4/18/24.
//

import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var cartManager:CartEcomesViewModel
    
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
           
            VStack(alignment:.leading){
                
                
                Text("History")
                    .font( .system(size: 33,weight: .bold))
                    .frame(maxWidth:  .infinity,alignment: .leading)
                    .padding()
                    .foregroundStyle(.black)
                ScrollView{
                    VStack{
                        ForEach(cartManager.historyRecord, id: \.id){ datos in
                            
                            cartHistory(data: datos)
                            
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {

        HistoryView()
            .environmentObject(CartEcomesViewModel())
        
    
 
}

struct cartHistory :View{
    var data:HistoryModels
    @State var showAll = false
    
    var body: some View {
        ZStack{
            
            VStack(alignment:.leading){
                Text("ID #\(String(data.id.uuidString.prefix(8)))")
                    .font(.caption)
                    .foregroundStyle(.black)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.black)
                HStack(alignment:.bottom){
                    VStack(alignment:.leading){
                        if showAll {
                            
                            ForEach(0..<data.listItems.count){ ind in
                                Text("\(ind + 1) - \(data.listItems[ind])")
                                    .fontWeight(.light)
                                    .foregroundStyle(.black)
                                
                            }
                        }else{
                            Text("Show all...")
                                .foregroundStyle(.gray)
                        }
                        
                    }
                    Spacer()
                    Text("Total: $\(data.totalOfOrden)")
                        .foregroundStyle(.black)
                        .font(.headline)
                }
               
                
            }
            .padding()
            .background(.kSecondary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                showAll.toggle()
            }
            
           

        }
       
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 2)
        }
        .padding()
        .animation(.spring, value: showAll)
    }
}
