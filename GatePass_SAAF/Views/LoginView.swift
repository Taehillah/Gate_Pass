//
//  LoginView.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/04/10.
//

import SwiftUI

struct LoginView: View {
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
