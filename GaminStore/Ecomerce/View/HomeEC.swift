//
//  HomeEC.swift
//  Rickmorty
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

struct HomeEC: View {
    @EnvironmentObject var cartManager:CartEcomesViewModel
       
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            VStack{
                HeroHome()
                SearchECView()
                ImageSliderView()
                ShowAllProducts()
            }
        }
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.vertical,40)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationStack{
        HomeEC()
            .environmentObject(CartEcomesViewModel())
    }
    
}

// CartView

struct HeroHome:View {
    @EnvironmentObject var cartManager:CartEcomesViewModel
    var body: some View {
        VStack(alignment:.leading ,spacing: 10){
            HStack{
                Image(systemName: "location.north.circle.fill")
                Text("Springfield anyPlace")
                    .foregroundStyle(Color.gray)
                    .font(.headline)
                    .fontWeight(.light)
                Spacer()
             
                NavigationLink(
                    destination: CartView()
                        .environmentObject(cartManager)
                        
                ) {
                    CartButton()
                }

                
                
            }
            
            VStack(alignment:.leading) {
                Text("Gaming-Solutions")
                    .font(.largeTitle)
                
                HStack{
                    Text("Find The ")
                        .font(.largeTitle)
                    Text("Most for less")
                        .font(.largeTitle)
                        .foregroundStyle(.red)
                }
                .fontWeight(.bold)
            }
        }
        .foregroundStyle(Color.black)
        .padding(.horizontal)
    }
}

struct ShowAllProducts:View{
    var body: some View{
        ZStack {
            Color.white
            VStack{
                HStack{
                    Text("New Rivals")
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                    Spacer()
                    NavigationLink {
                        AllProducts()
                            .environmentObject(CartEcomesViewModel())
                    } label: {
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundStyle(Color.kPrimary)
                    }
                    
                }
                
                
                ScrollView(.horizontal){
                    
                    HStack (spacing:10){
                        ForEach(EcommerseProducts.dummyData , id:\.id ) { product in
                            NavigationLink{
                                ProductDetailsView(product: product)
                            }label: {
                                ProductCardECView( product: product)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 40)
            
        }
        
    }
}
