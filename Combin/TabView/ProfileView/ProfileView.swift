//
//  ProfileView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct ProfileView: View {
    @State var search = ""
    @State var personInformation: Bool = false
    @State var cupboardInformation: Bool = false
    @State var bodySize: Bool = false
    @State var settings: Bool = false
    var et = "@"
    var bounds = UIScreen.main.bounds
    var body: some View {
        VStack {
            VStack {
                SearchBarView(search: search)
            }
            Spacer()
            VStack {
                Circle()
                    .foregroundColor(Color("firstPageColor"))
                    .frame(width: 120)
                Text("Furkan Çelik")
                Text("furkancelik\(et)gmail.com")
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
            }
            Spacer()
            VStack {
                Button {
                    personInformation = true
                } label: {
                    HStack {
                        Image(systemName: "person")
                            .font(.system(size: 30))
                            .padding()
                            .foregroundColor(.black)
                            .frame(width: bounds.width * 0.1)
                        Text("Kullanıcı Bilgileri")
                            .font(.system(size: 23))
                            .padding()
                            .foregroundColor(.black)
                    }
                }.sheet(isPresented: $personInformation) {
                    UserInformationView()
                }
                Button {
                    cupboardInformation = true
                } label: {
                    HStack {
                        Spacer()
                        Spacer()
                        Image("cupboard")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .frame(width: bounds.width * 0.1)
                            .offset(x: -26)
                        Spacer()
                        Text("Dolap")
                            .font(.system(size: 23))
                            .padding()
                            .foregroundColor(.black)
                            .offset(x: -80)
                        Spacer()
                        Spacer()
                    }
                }.sheet(isPresented: $cupboardInformation) {
                    CupboardView()
                }
                Button {
                    bodySize = true
                } label: {
                    Image(systemName: "pencil.and.ruler")
                        .font(.system(size: 30))
                        .padding()
                        .foregroundColor(.black)
                        .offset(x: -10)
                    Text("Vücut Ölçüleri")
                        .font(.system(size: 23))
                        .padding()
                        .foregroundColor(.black)
                        .offset(x: -25)
                }.sheet(isPresented: $bodySize) {
                    BodySizeView(bodySize: bodySize)
                }
                Button {
                    settings = true
                } label: {
                    Image(systemName: "gearshape")
                        .font(.system(size: 30))
                        .padding()
                        .foregroundColor(.black)
                        .offset(x: -45)
                    Text("Ayarlar")
                        .font(.system(size: 23))
                        .padding()
                        .foregroundColor(.black)
                        .offset(x: -65)
                }.sheet(isPresented: $settings) {
                    SettingsView()
                }


            }
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
