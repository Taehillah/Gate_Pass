//
//  ContentView.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/03/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animateImage = true //original size declaration
    
    var body: some View {
  
            ZStack{
                
                GeometryReader { geo in
                            Image("MainBK")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geo.size.width, height: geo.size.height)
                    }
                                .edgesIgnoringSafeArea(.all)
                            
            }
            
                }
        
            }
        




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
