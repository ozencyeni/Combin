//
//  SearchBarView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct SearchBarView: View {
    @State var search = ""
    let bounds = UIScreen.main.bounds
    var body: some View {
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
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
