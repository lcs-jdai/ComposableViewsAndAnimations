//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    
   
    
    @State private var yShadow = 20
    
    
  
//    @State var xOffset = -100.0
//
//    @State private var rotation = 0.0
//
//
//    //trigger to start the animation
    let timer = Timer.publish(every: 1.00, on: .main, in: .common).autoconnect()
    
    @State private var rotation = 0.0
  
    
    var body: some View {
        ZStack{
           Circle()
                .padding()
                .rotationEffect(.degrees(rotation))
                .shadow(color: .black, radius: 3, x: 20, y: 20)
                .foregroundColor(.orange)
                .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                .onReceive(timer){ Input in
                    yShadow -= -20
                    
                    rotation += 300
                    
                    
                                 
                }
            ZStack{
                Text("Jerry Dai")
                    .padding()
                    .rotationEffect(.degrees(rotation))
                    .shadow(color: .black, radius: 3, x: 20, y: 20)
                    .foregroundColor(.red)
                    .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                    .onReceive(timer){ Input in
                        yShadow -= -20
                        
                        rotation += 300
                        
                        
                                     
                    }
            }
            
            
//            Circle()
//                .frame(width: 50, height: 50)
//
//
//
//            Text("OK")
//                .foregroundColor(.white)
//
//        }
//        .offset(x: xOffset, y: 0)
//        .rotationEffect(.degrees(rotation), anchor: .center)
//        .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
//
//        .onReceive(timer){ input in
//            //move the circle and text to the right
//            xOffset = 100.0
//
//            //Turn once
//            rotation = 360.0
//
//            //turn off the time
//            timer.upstream.connect().cancel()
        }
    }
}

//struct CustomComposableView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomComposableView()
//    }
//}

