//
//  SearchECView.swift
//  Rickmorty
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

struct SearchECView: View {
    @State private var search = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                ZStack{
                    if search.isEmpty {
                        Text("Search")
                    }
                    
                   
                }
                TextField("Search ", text: $search)
                
                    
                    .padding()
            }
            .foregroundStyle(.kPrimary)
            .background(Color.kSecondary)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Image(systemName: "camera")
                .padding()
                .foregroundStyle(Color.kSecondary)
                .background(Color.kPrimary)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                
        }
        .padding(.horizontal)
        .padding(.bottom , 5)
    }
}

#Preview {
    SearchECView()
}

