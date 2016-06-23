//
//  TableViewController.swift
//  SwiftDemo
//
//  Created by Henry on 16/5/31.
//  Copyright © 2016年 Henry. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var width:CGFloat?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        width = self.view.frame.width
//        self.tableView.estimatedRowHeight = 100
//        self.tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifier = "cell"
        
        var cell:MyTableViewCell?
        cell = (tableView.dequeueReusableCellWithIdentifier(identifier)) as? MyTableViewCell
        if (cell == nil) {
            cell = MyTableViewCell.cellWithString()
        }
        cell?.label?.numberOfLines = 0
        cell!.label?.text = String(format: "hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello%d", indexPath.row)
        cell?.setImageNumber(indexPath.row)
        return cell!
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let str = NSString(format: "hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello%d", indexPath.row);
        let font = UIFont.boldSystemFontOfSize(17)
        let option = NSStringDrawingOptions.UsesLineFragmentOrigin
        let size = str.boundingRectWithSize(CGSizeMake(self.width!, 0), options: option, attributes: [NSFontAttributeName:font], context: nil)
        var h = 0
        if((indexPath.row%4)>0){
            h = 80
        }
        let height = size.height + CGFloat((indexPath.row/4)*80) + 24 + CGFloat(h)
        return height
    }
}

class MyTableViewCell:UITableViewCell{
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var view: UIView!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    func setImageNumber(num:Int){
        let width = view.bounds.width;
        let row = width/4;
        
        for i in 0..<num {
            let rect = CGRect(x: CGFloat(i%4)*80, y: CGFloat(i/4)*80, width: row, height: row)
            let imageView = UIImageView(frame: rect)
            let image = UIImage(named: "history_stop");
            imageView.image = image
            NSLog("imageheight:%f", imageView.bounds.height)
            self.view.addSubview(imageView)
        }
        let height = self.view.bounds.height;
        NSLog("height:%f", height)
    }
    static func cellWithString()-> MyTableViewCell {
        let cell = (NSBundle.mainBundle().loadNibNamed("MyTable", owner: nil, options: nil))[0]
        return cell as! MyTableViewCell
    }
    
}