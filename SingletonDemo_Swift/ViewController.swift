//
//  ViewController.swift
//  SingletonDemo_Swift
//
//  Created by KenenCS on 2017/7/27.
//  Copyright © 2017年 KenenCS. All rights reserved.
//

import UIKit

//单例类
class Singleton:NSObject {
    
    //创建一个私有的静态变量
    private static let instance = Singleton();
    //确保唯一性，通过此类方法创建对象
    class var shardSingleton: Singleton {
        return instance;
    }
    
    //使用单例测试一个颜色
    func testSingletonColor() -> UIColor {
        let color = UIColor.init(colorLiteralRed: 100/255.0, green: 20/255.0, blue: 30/255.0, alpha: 1);
        return color;
    }
    
}

//控制器
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        let sing1 = Singleton.init();
        let sing2 = Singleton.shardSingleton;
        
        //如果这两种创建方式生成的内存地址都一样，那么我们就大功告成
        print("---Swift的sing1:\(sing1)\n---Swift的sing2:\(sing2)\n");
        
        //使用单例赋值颜色
        self.view.backgroundColor = Singleton.shardSingleton.testSingletonColor();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

