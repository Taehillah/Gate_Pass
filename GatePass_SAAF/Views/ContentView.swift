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
                Text("REQUEST")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                    .padding( .leading, 150.0)
                    .padding( .top, 100)
                    .position(CGPointZero)
                
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
            
            
         
            
        }
        
    }
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
