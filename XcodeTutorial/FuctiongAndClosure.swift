//
//  FuctiongAndClosure.swift
//  XcodeTutorial
//
//  Created by csseol on 2020/03/18.
//  Copyright © 2020 Choonsik Seol. All rights reserved.
//

import Foundation

// 코틀린 retun [ : ]
// swift return [ -> ]
// for 문에서 _ 사용하지 않을경우 _ 사용
func test1Function(name:String, time: Int)->String {
    var strData = ""
    for _ in 0..<time{
        strData += "\(name)님 안녕하세요!\n"
    }
    return strData
}

// _로 명시하면 생략가능
func test2Function(_ name:String, time: Int)->String {
    var strData = ""
    for _ in 0..<time{
        strData += "\(name)님 안녕하세요!\n"
    }
    return strData
}

// 기본값을 넣어두면 생략가능
func test3Function(_ name:String, time: Int = 3)->String {
    var strData = ""
    for _ in 0..<time{
        strData += "\(name)님 안녕하세요!\n"
    }
    return strData
}

// 자바는 void test(String... a) kotlin fun test(vararg a: String?)
// 자바는 비슷하고 코틀린과는 형태는 다름
func test4Function( numbers: Int...) -> Int{
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}

//처음 보는 개념
func test5Function(name:String)->(String) ->String{
    func createString(message: String)->String{
        return name + message
    }
    return createString
}

func test6Function(message: String) -> (String, String) -> String{
    func hello(firstName:String, lastName:String) -> String {
        return lastName + firstName + message
    }
    return hello
}

//test6Function << Closure 형태로 변형
func test1Closure(message: String) -> (String, String) -> String{
    return {
        (firstName:String, lastName:String) -> String in
        return lastName + firstName + message
    }
}

// test1Closure 에서 축약
func test2Closure(message: String) -> (String, String) -> String{
    return {
        (firstName:String, lastName:String)  in
        return lastName + firstName + message
    }
}

// test2Closure 에서 축약
func test3Closure(message: String) -> (String, String) -> String{
    return {
        return $1 + $0 + message
    }
}

// test3Closure 에서 축약
func test4Closure(message: String) -> (String, String) -> String{
    return {$1 + $0 + message}
}

//사용 방법
func testForFunction(){
    // 코틀린은 함수 사용시 파라미터 값을 생략 가능
    // swift 는 필수
    let data = test1Function(name: "설춘식", time: 7)
    let data2 = test2Function("설춘식", time: 7)
    let data3 = test3Function("설춘식")
    let data4 = test4Function(numbers: 1,2,3,4)
    let data5 = test5Function(name: "설춘식") //("하이요") 여기서 붙여서 사용도 가능
    let data6 = test6Function(message: "하잉")("춘식","설")
    let data7 = test1Closure(message: "하잉")("춘식","설")
    let hello: (String, String) -> String = {$1 + $0 + "하잉"} //test4Closure 변수처럼 정의도 가능
    print(data)
    print(data2)
    print(data3)
    print(data4)
    print(data5("하이요"))
    print(data6)
    print(data7)
    print(hello("춘식","설"))
}
