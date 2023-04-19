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
    @State var btnSignUp = ""
    @State private var mvToLoginView = false

    var body: some View {

        
        ZStack{
            
            GeometryReader { geo in
                Image("MainBK")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geo.size.width, height: geo.size.height)
            }
            .edgesIgnoringSafeArea(.all)
            
            NavigationView{
                VStack{
                    HStack{
                        NavigationLink(destination: LoginView()){
                            Text("Login")
                        }
                    }
                    
                    .navigationTitle("Log in")
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
                        TextField("force no", text: $fn)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Text("Unit Name")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    HStack{
                        Image(systemName: "star")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fn)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Password")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    HStack{
                        Image(systemName: "book")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fn)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Password (Repeat)")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    HStack{
                        Image(systemName: "book")
                            .foregroundColor(Color(white: 0.9))
                        TextField("force no", text: $fn)
                    }
                    
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                }
                .padding()
            }
            
            Button(action: {mvToLoginView = true}){
              
                Text("SignUp")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width:100, height:30)
                    .background(LinearGradient(gradient: Gradient(colors: [ .clear, .clear, .clear, .clear]), startPoint: .leading, endPoint: .trailing))
                    .border(.background)
                    .padding(.top, 600.0)
                    .cornerRadius(20)
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
