//
//  StartedView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//
import SwiftUI

struct StartedView: View {
    
    let firstPageColor = Color("firstPageColor")
    @State var readCheck1 = true
    @State var readCheck2 = false
    @State var readCheck3 = false
    
    var body: some View {
        NavigationStack{
            ZStack {
                Rectangle()
                    .foregroundColor(firstPageColor)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Spacer()
                    
                    if readCheck1 == true{
                        Text("Lorem ipsum dolor sit amet")
                            .frame(alignment: .bottom)
                    }
                    if readCheck2 == true {
                        Text("Consectetur adipiscing elit")
                            .frame(alignment: .bottom)
                    }
                    if readCheck3 == true {
                        Text("Posuere tempus sed aliquam")
                            .frame(alignment: .bottom)
                    }
                    
                    Spacer()
                    HStack{
                        Spacer()
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: readCheck1 == true ? 50: 20, height: 20)
                            .foregroundColor(readCheck1 == true ? Color("activeCircle"): .white)
                            .onTapGesture {
                                UINotificationFeedbackGenerator().notificationOccurred(.success)
                                readCheck1 = true
                                readCheck2 = false
                                readCheck3 = false
                            }
                            .foregroundColor(readCheck1 == true ? Color("activeCircle"): .white)
                            .onTapGesture {
                                UINotificationFeedbackGenerator().notificationOccurred(.success)
                                readCheck1 = true
                                readCheck2 = false
                                readCheck3 = false
                            }
                            .animation(Animation.easeInOut, value: readCheck1)
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: readCheck2 == true ? 50: 20, height: 20)
                            .foregroundColor(readCheck2 == true ? Color("activeCircle"): .white)
                            .onTapGesture {
                                UINotificationFeedbackGenerator().notificationOccurred(.success)
                                readCheck1 = false
                                readCheck2 = true
                                readCheck3 = false
                            }
                            .animation(Animation.easeInOut, value: readCheck2)
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: readCheck3 == true ? 50: 20, height: 20)
                            .foregroundColor(readCheck3 == true ? Color("activeCircle"): .white)
                            .onTapGesture {
                                UINotificationFeedbackGenerator().notificationOccurred(.success)
                                readCheck1 = false
                                readCheck2 = false
                                readCheck3 = true
                            }
                            .animation(Animation.easeInOut, value: readCheck3)
                        Spacer()
                        if readCheck3 == true{
                            NavigationLink {
                                SignUpView()
                                    .onAppear{
                                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                                    }
                            } label: {
                                Image(systemName: "arrow.right")
                                    .font(.system(size: 50))
                                    .padding(.horizontal, 40)
                                    .foregroundColor(.black)
                            }

                        } else {
                            Button {
                                if readCheck2 == true {
                                    UINotificationFeedbackGenerator().notificationOccurred(.success)
                                    readCheck1 = false
                                    readCheck2 = false
                                    readCheck3 = true
                                }
                                if readCheck1 == true {
                                    UINotificationFeedbackGenerator().notificationOccurred(.success)
                                    readCheck1 = false
                                    readCheck2 = true
                                    readCheck3 = false
                                }
                                
                            } label: {
                                
                                Image(systemName: "arrow.right")
                                    .font(.system(size: 50))
                                    .padding(.horizontal, 40)
                                    .foregroundColor(.black)
                            }
                        }

                    }.padding(.vertical)
                }
            }
        }
    }
}

struct StartedView_Previews: PreviewProvider {
    static var previews: some View {
        StartedView()
    }
}
