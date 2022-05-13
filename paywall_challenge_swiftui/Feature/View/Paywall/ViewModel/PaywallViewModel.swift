 //
 //  PaywallViewModel.swift
 //  paywall_challenge_swiftui
 //
 //  Created by mehmet karanlık on 3.05.2022.
 //

import Combine



class PaywallViewModel : ObservableObject {
 @Published var isToggled : Bool = false

 init() {}



 let sliderCardImageNames : [String] = [
  ImageConstants.shared.all_collections,
  ImageConstants.shared.fonts,
  ImageConstants.shared.stickers,
  ImageConstants.shared.features,
 ]

 let sliderCardNames : [String] = [
  "All collections",
  "Additional Fonts",
  "Unique Stickers",
  "All Features"
 ]


}
