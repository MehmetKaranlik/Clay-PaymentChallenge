//
//  TextModifers.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import Foundation
import SwiftUI


struct CircleButtonModifier: ViewModifier {


 func body(content: Content) -> some View {
     content
   .frame(width: 32, height: 32, alignment: .center)
   .foregroundColor(ColorConstants.shared.secondary)
 }
}
