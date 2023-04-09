//
//  SignUpView.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/03/21.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        
        
        
        ZStack{
            
            GeometryReader { geo in
                Image("MainBK")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width, height: geo.size.height)
            }
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Image(systemName: "arrowshape.backward.fill")
                        .foregroundColor(Color(white: 0.9))
                        .padding( .leading, 50.0)
                        .padding( .top, 70)
                        .position(CGPointZero)
                    Text("SIGN UP")
                        .fontWeight(.heavy)
                        
                        .foregroundColor(Color.white)
                        .padding( .top, 70)
                        .padding( .leading, -180)
                        .position(CGPointZero)
                  
                }
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
