//
//  ImageModifer.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import Foundation
import SwiftUI


extension Image {
 func allroundedImageExtension(width : CGFloat,height : CGFloat, color : Color) -> some View {
  self
   .resizable()
   .frame(width: width, height: height, alignment: .center)
   .foregroundColor(color)
 }
}
