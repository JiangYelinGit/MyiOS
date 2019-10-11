//
//  基础内容.swift
//  MySwift
//
//  Created by jiangyelin on 2019/10/10.
//  Copyright © 2019 XinChan. All rights reserved.
//

import Foundation

//常量和变量

//常量和变量把名字（例如 maximumNumberOfLoginAttempts 或者 welcomeMessage ）和一个特定类型的值（例如数字 10 或者字符串 “Hello”）关联起来。常量的值一旦设置好便不能再被更改，然而变量可以在将来被设置为不同的值。

class Base {
    
    
    func printMsg() {
        
        //声明常量和变量
        
        //常量和变量必须在使用前被声明，使用关键字 let 来声明常量，使用关键字 var 来声明变量。这里有一个如何利用常量和变量记录用户登录次数的栗子：
        //“声明一个叫做 maximumNumberOfLoginAttempts 的新常量，并设置值为 10 。然后声明一个叫做 currentLoginAttempt 的新变量, 并且给他一个初始值 0。”
        let maximumNumberOfLoginAttempts = 10;
        var currentLoginAttempts = 2;
        //你可以在一行中声明多个变量或常量，用逗号分隔
        var x = 0.0, y = 0.0, z = 0.0
        
        
        //类型标注
        //你可以在声明一个变量或常量的时候提供类型标注，来明确变量或常量能够储存值的类型。
        //添加类型标注的方法是在变量或常量的名字后边加一个冒号，再跟一个空格，最后加上要使用的类型名称。
        var welcomeMsg: String
        welcomeMsg = "Hello"
        //你可以在一行中定义多个相关的变量为相同的类型，用逗号分隔，只要在最后的变量名字后边加上类型标注。
        var red, blue, green: Double
        
        
        
        
    }
}
