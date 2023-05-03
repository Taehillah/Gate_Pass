//
//  Passed.swift
//  GatePass_SAAF
//
//  Created by Ishmael Mafole on 2023/04/23.
//

import SwiftUI

struct Passed: View {
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
                VStack {
                   
                    Button("X"){
                
                          exit(0)
                    }
                    .foregroundColor(Color(white: 0.9))
                    .padding( .leading, 50.0)
                    .padding( .top, 70)
                    .position(CGPointZero)
                }
            }
            
            VStack{
                
                Image("Image")
                    .resizable(resizingMode: .stretch)
                    .frame(width:65, height:65)
                
               Text("Authorized")
                    .foregroundColor(Color(white: 1.0))
            }
        }
        
    }
        
        struct Passed_Previews: PreviewProvider {
            static var previews: some View {
                Passed()
            }
        }
    }
