//
//  TopView.swift
//  Combin
//
//  Created by Özenç Yeni on 7.06.2023.
//

import SwiftUI

struct TopView: View {
    @State var title: String
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .offset(x: 26)
                .font(.system(size: 25))
            Spacer()
            Image(systemName: "ellipsis")
                .padding(.horizontal)
                .font(.system(size: 25))
        }.padding()
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(title: "")
    }
}
