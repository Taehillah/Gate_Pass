//
//  ContentView.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/03/12.
//  The application has not been adopted by the organisation in any way or form

import SwiftUI

struct ContentView: View {
    
    @State private var animateImage = true //original size declaration
    @State var placeTo = ""
    @State var backBy = ""
    @State var reason = ""
    @State var authorize = ""
    @State var submit = ""
    @State var nako = ""
    @State var timeSelected = Date()
    @State private var mvToLoginView = false
    
    var body: some View {
        NavigationView{
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
                         //   TextField("Time", text: $backBy)
                            DatePicker("", selection: $timeSelected, displayedComponents: [.date, .hourAndMinute])
                                .datePickerStyle(.compact)
                                .foregroundColor(Color(white: 1.0))
                                .multilineTextAlignment(.center)
                                .opacity(1.0)
                                .frame(width:370, height:35)
                                .border(Color.white)
                                
                                .background(Color.white.opacity(1.0))
                                .accentColor(Color.white.opacity(1.0))
                            
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
                NavigationLink(destination: Passed()){
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
                    NavigationLink("", destination: Passed(), isActive: $mvToLoginView)
                    
                }
                
            }
            
        }
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
