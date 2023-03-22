//
//  SplashScreen.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/03/21.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var animateImage = true //original size declaration
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            
            ZStack(alignment: .center) {
                GeometryReader { geo in
                            Image("SplashBK")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geo.size.width, height: geo.size.height)
                    }
                                .edgesIgnoringSafeArea(.all)
                            
                VStack{
                    Image("Image")
                     .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .scaleEffect(animateImage ? 1.0 : 0.9) // if animate image is true set scale to 1 else 0.9
                    .onAppear(){
                       animateImage = false //activates the else of 0.9 in the .scaleEffect
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.3)
                            .repeatForever())// this repeats the process infinitely
                                      {animateImage = true
                                          //taking 0.9 of scaleEffect to 1.0 because isTrue
                                      }
                            }
                        }
                
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4.0){
                        self.isActive = true
                    }
                }
                
                    }
        }
        
     
        
            }
        }

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
