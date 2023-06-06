//
//  HomeView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct HomeView: View {
    
    let ratings = ["130", "150", "160", "40", "80", "10", "23", "74", "49"]
    
    let bounds = UIScreen.main.bounds
    @State var search: String = ""
    
    var body: some View {
        VStack {
            HStack{
                ZStack {
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: bounds.width * 0.7, height: bounds.height * 0.05)
                        .foregroundColor(Color("homeScreenSearchBarBackground"))
                        .padding(.horizontal)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        TextField("Stilist veya marka adı yazınız", text: $search)
                            .frame(width: bounds.width * 0.65, height: bounds.height * 0.05)
                        Image(systemName: "magnifyingglass").font(.system(size: 25))
                            .offset(x: -40)
                            .foregroundColor(Color("homeScreenSearchBarTools"))

                    }
                }.padding(.vertical)
                HStack {
                    Image(systemName: "message").font(.system(size: 25))
                        .foregroundColor(Color("homeScreenSearchBarTools"))
                    Image(systemName: "bell").font(.system(size: 25))
                        .foregroundColor(Color("homeScreenSearchBarTools"))
                    Spacer()
                }
                
                
            } //Search bar view
            VStack {
                HStack {
                    Text("Vitrin")
                        .font(.system(size: 20))
                        .padding(.horizontal)
                    Spacer()
                    NavigationLink {
                        ShowcaseView()
                    } label: {
                        HepsiniGörView()
                    }

                }
            } // Vitrin and Hepsini Gör
            VStack {
                HStack {
                    ScrollView(.horizontal){
                        HStack {
                            ForEach(0..<9) { data in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: bounds.width * 0.37, height: bounds.height * 0.3)
                                    .foregroundColor(Color("homeScreenRectangles"))
                                    HStack {
                                        Image(systemName: "play")
                                            .font(.system(size: 25))
                                        Text("\(ratings[data])K")
                                    }
                                }
                            }
                        }.padding(.horizontal)
                    }
                } // Rounded rectangles
            } // Rounded rectangles
            VStack {
                HStack {
                    Text("Kombinler")
                        .font(.system(size: 20))
                        .padding()
                    Spacer()
                    NavigationLink {
                        CombineView()
                    } label: {
                        HepsiniGörView()
                    }
                }
            } // Kombin and Hepsini Gör
            HStack {
                ScrollView {
                    HStack {
                        ForEach(1..<9) { data in
                            BottomRoundedRectangleViews()
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HepsiniGörView: View{
    var body: some View{
        Text("Hepsini Gör")
            .foregroundColor(.gray)
            .padding(.horizontal)
    }
}
struct BottomRoundedRectangleViews: View{
    let bounds = UIScreen.main.bounds
    var body: some View{
        RoundedRectangle(cornerRadius: 10)
            .frame(width: bounds.width * 0.4, height: bounds.height * 0.2)
            .foregroundColor(Color("homeScreenRectangles"))
    }
}
