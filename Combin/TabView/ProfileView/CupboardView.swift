//
//  CupboardView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct CupboardView: View {
    var body: some View {
        VStack {
            TopView(title: "Dolap")
            ScrollView(.vertical){
                VStack {
                    VStack {
                        HStack {
                            TitleView(title: "Pantolon")
                                .padding(.vertical)
                        }
                        VStack {
                            RectangleView()
                        }
                    }
                    VStack {
                        TitleView(title: "Gömlek")
                            .padding(.vertical)
                        VStack {
                            RectangleView()
                        }
                    }
                    VStack {
                        TitleView(title: "Ayakkabı")
                            .padding(.vertical)
                        VStack {
                            RectangleView()
                        }
                        
                    }
                }
            }
        }
    }
}

struct CupboardView_Previews: PreviewProvider {
    static var previews: some View {
        CupboardView()
    }
}

struct RectangleView: View {
    let bounds = UIScreen.main.bounds
    var body: some View{
        ScrollView(.horizontal){
            HStack {
                ForEach(1..<5, id: \.self) {_ in
                    ZStack {
                        Rectangle()
                            .frame(width: bounds.width * 0.4, height: bounds.height * 0.2)
                            .padding(.horizontal)
                        .foregroundColor(Color("firstPageColor"))
                        Image(systemName: "square.and.pencil")
                            .font(.system(size: 20))
                            .offset(x: 60, y: -70)
                    }
                }
            }
        }
        
    }
}

struct TitleView: View{
    var title: String
    var body: some View{
        HStack {
            Text(title).padding(.horizontal).font(.system(size: 20))
            Spacer()
        }
    }
}
