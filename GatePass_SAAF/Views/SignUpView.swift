//
//  SignUpView.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/03/21.
//

import SwiftUI

struct SignUpView: View {
    
    @State var fn = ""
    @State var unit = ""
    @State var pwd = ""
    @State var pwdRepeat = ""
    
    
    
    
    
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
            
            VStack{
                Image("Image")
                    .resizable(resizingMode: .stretch)
                    .frame(width:65, height:65)
                
                VStack(alignment: .leading){
                    Text("Force Number")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top, 70)
                    
                    HStack{
                        Image(systemName: "map")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fn)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Text("Unit Name")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top, 70)
                    
                    HStack{
                        Image(systemName: "map")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fn)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Password")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top, 70)
                    
                    HStack{
                        Image(systemName: "map")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fn)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Password (Repeat)")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top, 70)
                    
                    HStack{
                        Image(systemName: "map")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fn)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                }
                .padding()
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
