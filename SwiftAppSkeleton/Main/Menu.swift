//
//  Menu.swift
//  DemoSwift3
//
//  Created by Techmaster on 9/15/16.
//  Copyright © 2016 TechMaster. All rights reserved.
//

import Foundation
struct Menu {
    var title: String
    var viewClass: String  //Xib file must be same name with viewClass
    var storyBoard: String?
    var storyBoardID: String?
    init(title: String, viewClass: String) {
        self.title = title
        self.viewClass = viewClass
        self.storyBoard = nil
        self.storyBoardID = nil
    }
    init(title: String, viewClass: String, storyBoard: String, storyBoardID: String) {
        self.title = title
        self.viewClass = viewClass
        self.storyBoard = storyBoard
        self.storyBoardID = storyBoardID
    }
};

struct MenuSection {
    var section: String
    var menus: [Menu]
}
