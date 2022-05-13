//
//  ColorConstants.swift
//  paywall_challenge_swiftui
//
//  Created by mehmet karanlık on 3.05.2022.
//

import SwiftUI
struct ColorConstants {

 static let shared : ColorConstants = ColorConstants()

 private init () {}

 private func toColor(value : String) -> Color {
  return Color(value)
 }

 var primary : Color  {
  get { toColor(value: "Black")}
 }

 var primaryVariant : Color {
  get { toColor(value:"BlackRussian")}
 }

 var secondaryVariant : Color {
  get { toColor(value:"Ghost")}
 }

 var secondary : Color {
  get { toColor(value: "White")}
 }

 var surface : Color {
  get { toColor(value: "Bastile")}
  }
}
