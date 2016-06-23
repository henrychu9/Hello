//
//  MyObject.swift
//  SwiftDemo
//
//  Created by Henry on 16/5/27.
//  Copyright © 2016年 Henry. All rights reserved.
//

import Foundation

class MyObject{

    var str:String?
    
    var one = 10;
    func hello(){
        str = "world"
        let i = str?.startIndex;
        let s = str!.lowercaseString
        NSLog("hello\(one)\(s)\(i!)");
    }
    
    deinit{
        print("MyObect:%@回收", self)
    }
}

struct SomeStruct {
    var one:Int;
    var two:Int;
}

