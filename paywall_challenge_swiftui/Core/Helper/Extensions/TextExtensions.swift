//
//  File.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import Foundation
import SwiftUI


extension Text {
 func allRoundedTextExtension(font : Font ,fontWeight : Font.Weight?,color : Color) -> some View {
  self
   .foregroundColor(color)
   .font(font)
   .fontWeight(fontWeight ?? .regular)
 }
}
