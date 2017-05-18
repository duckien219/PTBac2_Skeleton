//
//  BootLogic.swift
//  TechmasterSwiftApp
//  Techmaster Vietnam

import UIKit

class BootLogic: NSObject {
    
    var menu : [MenuSection]!
    class func boot(_ window:UIWindow){
        let basic = MenuSection(section: "Basic", menus:[
            Menu(title: "Giải phương trình bậc 2", viewClass: "PTBac2"),
            Menu(title: "Vẽ hình quả trám", viewClass: "DrawDiamond"),
            Menu(title: "Black Screen", viewClass: "BlackScreen")
            ])

        let inter = MenuSection(section: "Intermediate", menus:[
            Menu(title: "Group Async", viewClass: "GroupAsync"),
            Menu(title: "Dispatch Once", viewClass: "DispatchOnce"),
            Menu(title: "Dispatch Barrier", viewClass: "DispatchBarrier"),
            Menu(title: "Dispatch After", viewClass: "DispatchAfter"),
            Menu(title: "Dispatch Apply", viewClass: "DispatchApply")
            ])
        
        let advance = MenuSection(section: "Advance", menus:[
            Menu(title: "Semaphore Wait", viewClass: "SemaphoreWait"),
            Menu(title: "Dead Lock", viewClass: "DeadLock"),
            Menu(title: "Toilet Simulation", viewClass: "ToiletSemaphore"),
            Menu(title: "Unsynchronize", viewClass: "Unsynchronize"),
            Menu(title: "Synchronize", viewClass: "SynchronizeDemo")
            ])
        
        let mainScreen = MainScreen(style: UITableViewStyle.grouped)
        mainScreen.menu = [basic, inter, advance]
        mainScreen.title = "Bài tập lập trình căn bản"
        mainScreen.about = "Written by Trinh Minh Cuong"
        
        let nav = UINavigationController(rootViewController: mainScreen)
        //nav.navigationBar.barStyle = UIBarStyle.BlackOpaque
        //nav.navigationBar.opaque = true
        window.rootViewController = nav        
      
    }   
}
