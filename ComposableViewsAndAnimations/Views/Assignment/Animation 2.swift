//
//  Animation 2.swift
//  ComposableViewsAndAnimations
//
//  Created by Jerry Dai on 2022-04-29.
//

import SwiftUI

struct Animation_2: View {
    
    private let lineWidth: CGFloat = 2
    
    @State private var rotation = 0.0
    
    let timer = Timer.publish(every: 1.00, on: .main, in: .common).autoconnect()

    var body: some View {

        ZStack{
            Circle()
                .stroke(Color.black, lineWidth: self.lineWidth)
            
            Path() { path in
                path.move(to: CGPoint(x: 160, y: 278))
                path.addLine(to: CGPoint(x: 300, y: 278))
                path.addLine(to: CGPoint(x: 300, y: 280))
                path.addLine(to: CGPoint(x: 160, y: 280))
            }
            .fill(Color.black)
            .rotationEffect(.degrees(rotation))
            .animation(Animation.default.speed(0.0005).repeatForever(autoreverses: true))
            .onReceive(timer){ Input in
                
                rotation += 360
                              
            }
            
            Path() { path in
                path.move(to: CGPoint(x: 160, y: 278))
                path.addLine(to: CGPoint(x: 260, y: 278))
                path.addLine(to: CGPoint(x: 260, y: 280))
                path.addLine(to: CGPoint(x: 160, y: 280))
            }
            .fill(Color.black)
            .rotationEffect(.degrees(rotation))
            .animation(Animation.default.speed(0.0003).repeatForever(autoreverses: true))
            .onReceive(timer){ Input in
                
                rotation += 360
                          
            }
            
            
            Path() { path in
                path.move(to: CGPoint(x: 160, y: 278))
                path.addLine(to: CGPoint(x: 230, y: 278))
                path.addLine(to: CGPoint(x: 230, y: 280))
                path.addLine(to: CGPoint(x: 160, y: 280))
            }
            .fill(Color.black)
            .rotationEffect(.degrees(rotation))
            .animation(Animation.linear.speed(0.0001).repeatForever(autoreverses: true))
            
            .onReceive(timer){ Input in
                rotation += 360
                              
            }
            
            Circle()
                .fill(Color.black)
                .frame(width: 20, height: 20, alignment: .center)
            
    }
    }
                                 
                }
           

struct Animation_2_Previews: PreviewProvider {
    static var previews: some View {
        Animation_2()
    }
}
