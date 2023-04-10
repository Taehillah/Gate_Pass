//
//  LoginView.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/04/10.
//

import SwiftUI

struct LoginView: View {
    
    @State var fnLogin = ""
    @State var btnLogin = ""
    
    
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
                    Text("    LOGIN")
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
                        Image(systemName: "pencil")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fnLogin)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Text("Password")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    HStack{
                        Image(systemName: "book")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fnLogin)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                }
                .padding()
            }
            
            Button(action: {
                print(self.$btnLogin)
            }, label: {
                
                Text("Login")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width:100, height:30)
                    .padding(.top, 400.0)
                    
            })
        }
    }
}
        
        
        

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
