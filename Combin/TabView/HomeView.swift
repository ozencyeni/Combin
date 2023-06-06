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
            SearchBarView(search: search)
                
                //Search bar view
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
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(1..<9) { data in
                            VStack {
                                BottomRoundedRectangleViews()
                                BottomRoundedRectangleViews()
                            }
                        }
                    }.padding(.horizontal)
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
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: bounds.width * 0.44, height: bounds.height * 0.13)
                .foregroundColor(Color("homeScreenRectangles"))
                VStack {
                    Spacer()
                    Spacer()
                    HStack {
                        Circle()
                            .frame(width: 30)
                        Text("Duygu Karataş")
                            .font(.system(size: 15))
                    }
                    Text("Tarafından Düzenlendi")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                    Spacer()
                }
            }
        }
    }
}
