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
                Image("Image")
                    .resizable(resizingMode: .stretch)
                    .frame(width:65, height:65)
                
               Text("Approved")
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
