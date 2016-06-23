//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Henry on 16/5/19.
//  Copyright © 2016年 Henry. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
//    var a;
    @IBOutlet weak var imageView: UIImageView!
//    var a;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = UIColor.redColor()
        self.view.addSubview(view)
        imageView.image = UIImage(named: "history_stop")
    }
    
    
    @IBAction func next(sender: UIButton) {
        let viewController = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("tableview")
        self.presentViewController(viewController, animated: true, completion: nil)
    }
    func backwards(s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    func Sum(a:Int,b:Int) -> Int {
        return a + b
    }
    func sort(names strs:[String],result:(s1:String,s2:String)->Bool)->String{
        var str = strs[0]
        for s in strs {
            if(result(s1: s,s2: str)){
                str = s;
            }
        }
        return str
    }
    
    func my(str:String,s2:String)->(()->String){
        func h()->String{
            return "hello"
        }
        return h
    }
}

