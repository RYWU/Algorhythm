//
//  Playlist.swift
//  Algorhythm
//
//  Created by RYWU on 9/19/15.
//  Copyright (c) 2015 吳瑞洋公司. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()

    init (index: Int) {
        let musicLibrary = MusicLibrary().library
        let playListDictionary = musicLibrary[index]
        
        title = playListDictionary["title"] as! String!
        description = playListDictionary["description"] as! String!
        
        let iconName = playListDictionary["icon"] as! String!
        icon = UIImage(named: iconName)
        
        let largeIconName = playListDictionary["largeIcon"] as! String!
        
        largeIcon = UIImage(named: largeIconName)
        
        artists += playListDictionary["artists"] as! [String]
        
        let colorsDictionary = playListDictionary["backgroundColor"] as! [String: CGFloat]
        
        backgroundColor = rgbColorFromDictionary(colorsDictionary)
        
    }
    
    func rgbColorFromDictionary(colorDictionary: [String: CGFloat]) -> UIColor {
        
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        
    }
    
}
