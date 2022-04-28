//
//  ExerciseOneView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-23.
//

import SwiftUI
import UIKit

struct ExerciseOneView: View {
    
    // MARK: Stored properties
    
    // Controls whether this view is showing or not
    @Binding var showThisView: Bool
    
    @State private var scaleFactor: CGFloat = 1.0
        
    // Whether to apply the animation
    @State private var useAnimation = false
    
    @State var randColor = Color.blue
    
    @State private var xOffset: CGFloat = 0.0
    
    @State private var yOffset: CGFloat = 0.0
    

    // MARK: Computed properties

    var body: some View {
        
        NavigationView {
            
            VStack {

                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(self.randColor)
                    .offset(x: xOffset, y: yOffset)
                    .scaleEffect(scaleFactor)
                    .onTapGesture {
                        if scaleFactor > 0.2 {
                            // Reduce the size of the circle by a tenth
                            scaleFactor -= 0.1
                            self.newColor()
                            
                        xOffset = CGFloat.random(in: -100...100)
                        yOffset = CGFloat.random(in: -100...100)
                        } else {
                            // Make sure the button doesn't entirely disappear
                            scaleFactor = 1
                        }
                        
                            
                          
                    
                       
                    }
                
            }
            .navigationTitle("Exercise 1")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Done") {
                        hideView()
                    }
                }
            }

        }
        
    }
    
    // MARK: Functions
    
    // Makes this view go away
    func hideView() {
        showThisView = false
    }
    
    func newColor() {
        
        let rand1 = Double.random(in: 0...255)
        let rand2 = Double.random(in: 0...255)
        let rand3 = Double.random(in: 0...255)
        
        let randColor = Color(red: rand1/255, green: rand2/255, blue: rand3/255)
        
        self.randColor = randColor
    }
    
//    func newLocation() {
//        let randp1 = Double.random(in: 100...220)
//        let randp2 = Double.random(in: 100...357)
//
//        var randPosition = position(x: randp1, y: randp2)
//
//        self.randPosition = randPosition
//
//    }
    
}

struct ExerciseOneView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseOneView(showThisView: .constant(true))
    }
}
