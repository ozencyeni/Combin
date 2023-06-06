//
//  BodySizeView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct BodySizeView: View {
    @State var bodySize: Bool
    @State var height: String = ""
    @State var weight: String = ""
    let bounds = UIScreen.main.bounds
    var body: some View {
        VStack {
            TopView(title: "Vücut Ölçüleri")
                .padding(.vertical)
            HStack {
                TitleView(title: "Vücut Tipi")
            }
            HStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(1..<10) { data in
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(Color("firstPageColor"))
                                .frame(width: bounds.width * 0.35, height: bounds.height * 0.20)
                        }
                    }.padding(.horizontal)
                }
            }
            VStack {
                TextInputView(title: "Boy", value: height)
                    .keyboardType(.numberPad)
                Divider()
                    .frame(width: bounds.width * 0.9, height: 10)
                TextInputView(title: "Kilo", value: weight)
                    .keyboardType(.numberPad)
                Divider()
                    .frame(width: bounds.width * 0.9, height: 10)
            }.padding()
            Spacer()
            Spacer()
            Button {
                bodySize = false
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: bounds.width * 0.9, height: bounds.height * 0.08)
                        .foregroundColor(Color("firstPageColor"))
                    Text("KAYDET")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                }
            }.padding(.vertical)

        }
    }
}

struct BodySizeView_Previews: PreviewProvider {
    static var previews: some View {
        BodySizeView(bodySize: true)
    }
}

struct TextInputView: View{
    var title: String
    @State var value: String
    let bounds = UIScreen.main.bounds
    var body: some View{
        TextField(title, text: $value)
            .frame(width: bounds.width * 0.9)
            .font(.system(size: 20))
    }
}
