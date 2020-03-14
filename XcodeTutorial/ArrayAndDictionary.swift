//
//  ArrayAndDictionary.swift
//  XcodeTutorial
//
//  Created by csseol on 2020/03/14.
//  Copyright © 2020 Choonsik Seol. All rights reserved.
//

import Foundation


//array는 동일한 자료형만 사용할 수 있음
var arrayTest = ["a","b","c"]
var arrayTest2 = [0,1,1,2]
//var arrayTest2 = [0,"1","1",2]

//빈 배열 생성 방법
var array1 = Array<Int>()
var array2: Array<Int> = Array()
var array3 = [Int]()
var array4 : [Int] = []

//배열리터럴
var array5 = [1,2,3,4,5]
var array6 = (arrayLiteral: 1,2,3,4,5) //처음보는 형태

//시퀀스
var array7 = Array(1...5) //kotlin 은 점.. 두개로 Range 사용

//characters 방법 사라짐
var array8 = Array("Hello world".map{String($0)})

var array9 = Array(repeating: 0, count: 2)

// 순서가 없음
var dict = ["key1":"Value","key2":"Value","key3":"Value"]

// 빈 Dictionary 생성 방법
var dict1 : [Int : String] = [:]
var dict2 = [Int : String]()
var dict3 : Dictionary = [Int : String]()
var dict4 : Dictionary<Int, String> = Dictionary<Int, String>()

var sortedDictionalToArray = Array<String>(dict.values.sorted())
