//
//  Download.swift
//  SwiftUIIOS13
//
//  Created by Sikandar Ali on 13/10/2021.
//

import SwiftUI

struct Download: Identifiable {
    let id = UUID().uuidString
    var downloads :CGFloat
    var weekday:String
}

var downloads:[Download] = [
    Download(downloads: 500, weekday: "Mon"),
    Download(downloads: 240, weekday: "Tue"),
    Download(downloads: 350, weekday: "Wed"),
    Download(downloads: 430, weekday: "Thu"),
    Download(downloads: 690, weekday: "Fri"),
    Download(downloads: 540, weekday: "Sat"),
    Download(downloads: 920, weekday: "Sun")
]
