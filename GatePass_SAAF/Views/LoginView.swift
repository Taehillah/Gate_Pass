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
    @State private var mvSignUpView = false
    
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
                        Image(systemName: "lock")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fnLogin)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                }
                .padding()
            }
            
            
            
            
            Button(action: {mvSignUpView = true}){
              
                Text("Login")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width:100, height:30)
                    .background(LinearGradient(gradient: Gradient(colors: [ .clear, .clear, .clear, .clear]), startPoint: .leading, endPoint: .trailing))
                    .border(.background)
                    .padding(.top, 400.0)
                    .cornerRadius(20)
            }
         
        }
        }
    }

        
        
        

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
