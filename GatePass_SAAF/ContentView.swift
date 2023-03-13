//
//  ContentView.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/03/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Image("SplashBK")
                .frame(width: 50, height: 50)
            VStack{
                Image("Image")
                 .resizable()
                .frame(width: 50.0, height: 50.0)
                Text("SAAF")
                    .foregroundColor(Color.white)
                Rectangle()
                
                    .frame(width:100, height:5.0)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
