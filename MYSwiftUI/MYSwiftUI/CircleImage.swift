//
//  CircleImage.swift
//  MYSwiftUI
//
//  Created by user218968 on 6/9/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View{
        AsyncImage(url: URL(string: "https://www.infoescola.com/wp-content/uploads/2009/11/parque-ibirapuera.jpg"))
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 20)
            .frame(height: 300)
    }
}

