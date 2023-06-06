//
//  SignUpView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

import SwiftUI

struct SignUpView: View {
    
    @State var nameSurname: String = ""
    @State var eMail: String = ""
    @State var password: String = ""
    @State var signCheck = false
    @State var appleSignUpSheet = false
    @State var facebookSignUpSheet = false
    @State var googleSignUpSheet = false
    @State var isPresented = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Hesap Oluştur")
                    .padding(.vertical)
                
                VStack{
                    Group{
                        TextField("Ad Soyad", text: $nameSurname)
                            .multilineTextAlignment(.leading)
                            .frame(width: 250)
                        Divider().frame(width: 250)
        //                Rectangle()
        //                    .frame(width: 250, height: 0.5, alignment: .bottom)
                    }
                    Group{
                        TextField("E Mail", text: $eMail)
                            .keyboardType(.emailAddress)
                            .multilineTextAlignment(.leading)
                            .frame(width: 250)
                        Divider().frame(width: 250)
                    }
                    Group{
                        SecureField("Şifre", text: $password)
                            .multilineTextAlignment(.leading)
                            .frame(width: 250)
                        Divider().frame(width: 250)
                    }
                }.padding(.vertical)
                VStack {
                    NavigationLink {
                        TabViews()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color("firstPageColor"))
                            Text("Sign Up")
                                .foregroundColor(.black)

                        }
                    }

                }.padding(.vertical)
                Divider().padding(.vertical)
                    .frame(width: 250)
                HStack {
                    Button {
                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                        googleSignUpSheet = true
                        isPresented = true
                    } label: {
                        signUpWidthExtension(imageName: "googleIcon").padding(.horizontal)
                    }
                    Button {
                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                        appleSignUpSheet = true
                        isPresented = true
                    } label: {
                        signUpWidthExtension(imageName: "apple.logo").padding(.horizontal)
                    }
                    Button {
                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                        facebookSignUpSheet = true
                        isPresented = true
                    } label: {
                        signUpWidthExtension(imageName: "facebookIcon").padding(.horizontal)
                    }
                    
                }
                Text("Stilist olabilmek için hemen başvur!")
                    .onTapGesture {
                        UINotificationFeedbackGenerator().notificationOccurred(.error)
                    }
                    .offset(y: 50)
            }.sheet(isPresented: $isPresented) {
                if appleSignUpSheet == true {
                    AppleSignView()
                }
                if googleSignUpSheet == true {
                    GoogleSignView()
                }
                if facebookSignUpSheet == true {
                    FacebookSignView()
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct signUpWidthExtension: View {
    var imageName: String
    var imageSize: CGFloat = 30
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(Color("firstPageColor"))
            if imageName == "apple.logo"{
                Image(systemName: imageName)
                    .font(.system(size: imageSize))
                    .foregroundColor(.black)
            } else {
                Image(imageName)
                    .font(.system(size: imageSize))
            }
            
        }    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
