//
//  ContentView.swift
//  MYSwiftUI
//
//  Created by user218968 on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 550)
            CircleImage()
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("São Paulo")
                    .font(.title)
                HStack(alignment: .top){
                    Text("Parque Ibirapuera")
                        .font(.subheadline)
                    Spacer()
                    Text("São Paulo")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
