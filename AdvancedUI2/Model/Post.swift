//
//  Post.swift
//  AdvancedUI2
//
//  Created by Nuriddin Jumaev on 11/29/20.
//  Copyright © 2020 Nuriddin Jumaev. All rights reserved.
//

import Foundation

class Post {
    var name: String? = ""
    var time: String? = ""
    var content: String? = ""
    var mainImage: String? = ""
    var profileImage: String? = ""
    init(name:String,time:String, content:String, mainImage:String, profileImage:String) {
        self.name = name
        self.time = time
        self.content = content
        self.mainImage = mainImage
        self.profileImage = profileImage
        
    }
}
