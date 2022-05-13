 //
 //  ImageConstants.swift
 //  UBER-CLONE-SwiftUI
 //
 //  Created by mehmet karanlık on 26.04.2022.
 //

import Foundation


struct ImageConstants {

 static let shared : ImageConstants = ImageConstants()

 private init () {}

 var appIcon : String  {
  get { toImage(value: "appIcon")}

 }

 var all_collections : String {
  get {toImage(value: "all_collections")}
 }
 var features : String {
  get {toImage(value: "features")}
 }
 var fonts : String {
  get {toImage(value: "fonts")}
 }
 var stickers : String {
  get {toImage(value: "stickers")}
 }






 private  func toImage(value : String ) -> String {
  return value
 }


}
