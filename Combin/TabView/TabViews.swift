//
//  TabViews.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct TabViews: View {
    @State private var selectedTab: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            
            VStack {
                TabView(selection: $selectedTab) {
                    switch selectedTab {
                    case .house:
                        HomeView()
                    case .star:
                        ExploreView()
                    case .book:
                        StylistView()
                    case .person:
                        ProfileView()
                    }
                }
            }
            
            
            VStack {
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
