//
//  ContentView.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/03/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animateImage = true //original size declaration
    @State var placeTo = ""
    @State var backBy = ""
    @State var reason = ""
    @State var authorize = ""
    @State var submit = ""
    @State var nako = ""
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
            
            VStack{
                HStack{
                    Image(systemName: "arrowshape.backward.fill")
                        .foregroundColor(Color(white: 0.9))
                        .padding( .leading, 50.0)
                        .padding( .top, 70)
                        .position(CGPointZero)
                    Text("EXIT")
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
                    Text("To (Place Visiting)")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top, 70)
                        
                    HStack{
                        Image(systemName: "map")
                            .foregroundColor(Color(white: 0.9))
                        TextField("Place", text: $placeTo)
                    }
                  
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Back by (Time)")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top)
                        
                    HStack{
                        Image(systemName: "clock")
                            .foregroundColor(Color(white: 0.9))
                        TextField("Time", text: $backBy)
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                 
                    Text("Reason")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top)
                        
                    HStack{
                        Image(systemName: "book")
                            .foregroundColor(Color(white: 0.9))
                        TextField("Comment", text: $reason)
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Authority")
                        .foregroundColor(Color(white: 1.0))
                        .fontWeight(.bold)
                        .padding(.top)
                        
                    HStack{
                        Image(systemName: "pencil")
                            .foregroundColor(Color(white: 0.9))
                        TextField("Authentication Key", text: $authorize)
                    }
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    
                }
                
                .padding()
            }
            
            Button(action: {mvToLoginView = true}){
              
                Text("Submit")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width:100, height:30)
                    .background(LinearGradient(gradient: Gradient(colors: [ .clear, .clear, .clear, .clear]), startPoint: .leading, endPoint: .trailing))
                    .border(.background)
                    .padding(.top, 600.0)
                    .cornerRadius(20)
            }
            NavigationLink("", destination: LoginView(), isActive: $mvToLoginView)
           
        }
        
    }
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
