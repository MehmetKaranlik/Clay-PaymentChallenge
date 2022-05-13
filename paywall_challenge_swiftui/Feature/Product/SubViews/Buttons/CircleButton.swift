//
//  CircleButton.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import Foundation
import SwiftUI


struct CircleButton<T:View> : View {

 @ViewBuilder var overLay : T
 var body: some View {
   Circle()
   .modifier(CircleButtonModifier())
   .overlay(alignment: .center) {
    overLay
   }
 }
}

struct CircleButton_Previews: PreviewProvider {
 static var previews: some View {
  CircleButton(
   overLay: {
    Image(systemName: "heart.fill")
   })
   .previewLayout(.sizeThatFits)
   .padding()
   .preferredColorScheme(.dark)
 }
}
