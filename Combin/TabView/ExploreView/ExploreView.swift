//
//  ExploreView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack {
            SearchBarView()
            ScrollView(.vertical){
                HStack {
                    TitleView(title: "Vitrin")
                    HepsiniGörView()
                }
                ScrollView(.horizontal){
                    HStack {
                        ForEach(1..<10) { data in
                            NavigationLink {
                                MostFavoritesStylistsView()
                            } label: {
                                StylistRectangles()
                                    .foregroundColor(.black)
                            }

                            
                        }
                    }.padding(.horizontal)
                }
                HStack {
                    TitleView(title: "En Yeni Stilistler")
                    HepsiniGörView()
                }.padding(.vertical)
                
                ScrollView(.horizontal){
                    HStack {
                        ForEach(1..<10) { data in
                            StylistRectangles()
                        }
                    }.padding(.horizontal)
                }
                HStack {
                    TitleView(title: "Diğer Stilistler")
                    HepsiniGörView()
                }.padding(.vertical)
                
                ScrollView(.horizontal){
                    HStack {
                        ForEach(1..<10) { data in
                            OtherStylists()
                        }
                    }.padding(.horizontal)
                }
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

struct StylistRectangles: View{
    let bounds = UIScreen.main.bounds
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: bounds.width * 0.4, height: bounds.height * 0.2)
            .foregroundColor(Color("homeScreenRectangles"))
            VStack {
                Circle()
                    .frame(width: 80)
                .foregroundColor(.gray)
                Text("Duygu Karataş")
                    .font(.system(size: 20))
                HStack {
                    Image(systemName: "star")
                    Text("4.7")
                    Text("(358)")
                }.padding(.vertical,1)
            }
        }
    }
}

struct OtherStylists: View{
    let bounds = UIScreen.main.bounds
    var body: some View{
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: bounds.width * 0.55, height: bounds.height * 0.25)
            .foregroundColor(Color("firstPageColor"))
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: bounds.width * 0.55, height: bounds.height * 0.125)
                    .offset(y: 60)
                    .foregroundColor(Color("homeScreenSearchBarBackground"))
                VStack {
                    HStack {
                        Circle().frame(width: 40)
                        VStack {
                            Text("Furkan Çelik")
                                .font(.system(size: 14))
                                .padding(.vertical,4)
                            HStack {
                                ForEach(0..<5) { data in
                                    Image(systemName: "star")
                                        .font(.system(size: 10))
                                }
                                
                            }
                        }
                        VStack {
                            Text("Başlangıç")
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                            Text("120 ₺")
                                .font(.system(size: 20))
                        }
                    }.offset(y: 30)
                }
                Text("Lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem")
                    .font(.system(size: 15))
                    .frame(maxWidth: bounds.width * 0.55)
                    .offset(y: 80)
            }
        }
    }
}
