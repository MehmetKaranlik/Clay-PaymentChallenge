//
//  RoundedRectangle.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import Foundation
import SwiftUI


struct RoundedRectangleButtonStyle : ButtonStyle {
 let buttonColor : Color
 let width : CGFloat
 let height : CGFloat
 func makeBody(configuration: Configuration) -> some View {
  configuration.label
   .opacity(configuration.isPressed ? 0.95 : 1)
   .scaleEffect(configuration.isPressed ? 0.90 : 1)
   .frame(width: width, height: height, alignment: .center)
   .background(buttonColor,alignment: .center)
   .cornerRadius(height/2)
   .padding(.horizontal,16)

 }
}
