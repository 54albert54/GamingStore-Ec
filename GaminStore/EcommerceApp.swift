//
//  EcommecesApp.swift
//  Rickmorty
//
//  Created by Angel alberto Bernechea on 4/17/24.
//

import SwiftUI

struct EcommerceApp: View {
    @EnvironmentObject var cartManager:CartEcomesViewModel
      
    @State var currentTab:Tab = .Home
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    @Namespace var animation
    
    var body: some View {
        TabView(selection: $currentTab){
            HomeEC()
                .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background()
               
                .tag(Tab.Home)
            Text("Search view")
                .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background()
                .tag(Tab.Search)
            
            Text("Notification view")
                .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background()
                .tag(Tab.Notification)
            
            CartView()
                .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background()
                .tag(Tab.Cart)
            
            Text("Profile view")
                .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background()
                .tag(Tab.Profile)
            
        }
        .overlay(alignment: .bottom) {
            // ,aligment: .bottom
            HStack(spacing: 0 ){
                
                ForEach(Tab.allCases , id: \.rawValue  ){ tab in
                    TabButton(tab:tab)
                }
                .padding(.vertical)
                .padding(.bottom , getSafeArea().bottom == 0 ? 5 :(getSafeArea().bottom  - 15))
                .background(Color.kSecondary)
            }
            
            
            
        }
//        .frame(maxHeight: .infinity ,alignment: .bottom)
    }
    func TabButton(tab :Tab) -> some View{
        GeometryReader{proxy in
            Button {
                withAnimation(.spring) {
                    currentTab = tab
                }
            } label: {
                VStack(spacing: 0, content: {
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill" : tab.rawValue)
                        .resizable()
                        .foregroundColor(.kPrimary)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25,height: 25)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    MaterialEffect (style: .light)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .matchedGeometryEffect(id: "Tab", in: animation )
                                        .frame(width: 60 )
                                    
                                    Text(tab.TabName)
                                        .foregroundStyle(.kPrimary)
                                        .font(.footnote)
                                        .padding(.top , 50)
                                        .padding(.top,22)
                                    
                                    
                                }
                            }
                        ).contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -10 : 0)
                })
            }
            
        }
        .frame(height: 1)
        
    }
}

#Preview {
    NavigationStack{
        EcommerceApp()
        .environmentObject(CartEcomesViewModel())
    
    }
        
    
}


enum Tab:String , CaseIterable ,Hashable{
    case Home = "house"
    case Search = "magnifyingglass.circle"
    case Notification = "bell"
    case Cart = "bag"
    case Profile = "person"
    
    var TabName:String {
        switch self {
        case .Home:
            return "home"
        case .Search:
            return "Search"
        case .Notification:
            return "Notifications"
        case .Cart:
            return "Cart"
        case .Profile:
            return "Profile"
        }
    }
}

extension View {
    func getSafeArea() -> UIEdgeInsets{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
}

struct MaterialEffect:UIViewRepresentable{
    var style:UIBlurEffect.Style
    
    func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
}



