//
//  StringUtilTests.swift
//  StringUtilTests
//
//  Created by Priyanka Mistry on 17/04/18.
//  Copyright © 2018 Built.io. All rights reserved.
//

import XCTest
@testable import StringUtil

class StringUtilTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCapitalizeFirstLetter() {
        var str = "hello world!"
        str.capitalizeFirstLetter()
        XCTAssertEqual(str, "Hello world!")
        XCTAssertNotEqual(str, "hello world!")

    }
    
    func testHasLetters() {
        var str = "Hello World!"
        XCTAssertTrue(str.hasLetters)
        str = "12345"
        XCTAssertFalse(str.hasLetters)
    }

    func testHasNumbers() {
        var str = "Hello World! 123"
        XCTAssertTrue(str.hasNumbers)
        str = "Hello World!"
        XCTAssertFalse(str.hasNumbers)
    }
    
    func testIsAlphabetic() {
        var str = "Hello World!"
        XCTAssertTrue(str.isAlphabetic)
        str = "12345"
        XCTAssertFalse(str.isAlphabetic)
    }
    
    func testIsNumeric() {
        var str = "12345"
        XCTAssertTrue(str.isNumeric)
        str = "Hello World!"
        XCTAssertFalse(str.isNumeric)
    }
    
    func testContainsOnlyInteger() {
        var str = "12345"
        XCTAssertTrue(str.containsOnlyInteger)
        str = "12345A"
        XCTAssertFalse(str.containsOnlyInteger)
    }

    func testIsAlphaNumeric() {
        var str = "HelloWorld12345"
        XCTAssertTrue(str.isAlphaNumeric)
        str = "HelloWorld_12345"
        XCTAssertFalse(str.isAlphaNumeric)
    }

    func testIsEmail() {
        var str = "abcd@xyz.com"
        XCTAssertTrue(str.isEmail)
        str = "abcd@xyz"
        XCTAssertFalse(str.isEmail)
    }
    
    func testIsValidUrl() {
        var str = "https://www.google.com"
        XCTAssertTrue(str.isValidUrl)
        str = "abcd"
        XCTAssertFalse(str.isValidUrl)
    }
    
    func testIsValidSchemedUrl() {
        var str = "http://www.google.com"
        XCTAssertTrue(str.isValidSchemedUrl)
        str = "www.google.com"
        XCTAssertFalse(str.isValidSchemedUrl)
    }
    
    func testIsValidHttpsUrl() {
        var str = "https://www.google.com"
        XCTAssertTrue(str.isValidHttpsUrl)
        str = "http://www.google.com"
        XCTAssertFalse(str.isValidHttpsUrl)
    }
    
    func testIsValidHttpUrl() {
        var str = "http://www.google.com"
        XCTAssertTrue(str.isValidHttpUrl)
        str = "https://www.google.com"
        XCTAssertFalse(str.isValidHttpUrl)
    }
    
    func testIsValidFileUrl() {
        var str = "file:/user/myfolder/myfile.text"
        XCTAssertTrue(str.isValidFileUrl)
        str = "user/myfolder/myfile.text"
        XCTAssertFalse(str.isValidFileUrl)

    }
    
    func testIsPhoneUrl() {
        var str = "tel:8080800808"
        XCTAssertTrue(str.isPhoneUrl())
        str = "8080800808"
        XCTAssertFalse(str.isPhoneUrl())
    }
    
    func testIsEmailUrl() {
        var str = "mailto:abcd@xyz.com"
        XCTAssertTrue(str.isEmailUrl())
        str = "abcd@xyz.com"
        XCTAssertFalse(str.isEmailUrl())
    }
    
    func testBoolValue() {
        var str = "dummy"
        XCTAssertFalse(str.boolValue)
        str = "True"
        XCTAssertTrue(str.boolValue)
        str = "1"
        XCTAssertTrue(str.boolValue)
        str = "False"
        XCTAssertFalse(str.boolValue)
        str = "0"
        XCTAssertFalse(str.boolValue)
    }
    
    func testDate() {
        var str = "1988-10-09"
        XCTAssertNotNil(str.date)
        str = "1988-10-0"
        XCTAssertNil(str.date)
    }
   
    func testDateTime() {
        var str = "1988-10-09 22:11:09"
        XCTAssertNotNil(str.dateTime)
        str = "1988-10-09 02:22"
        XCTAssertNil(str.dateTime)
    }

    func testURL() {
        var str = "www.google.com"
        XCTAssertNotNil(str.url)
        str = "1988-10-09 02:22"
        XCTAssertNil(str.url)
    }

    func testTriamed() {
        let str = " hello "
        XCTAssertEqual(str.trimmed, "hello")
    }
    
    func testURLEncodingDecoding() {
        let str = "hello world"
       let encode = str.urlEncoded
       let decode = encode.urlDecoded
        XCTAssertEqual(decode, "hello world")
    }
    
    func testWithoutSpacesAndNewLines() {
        let str = " Hello \n World "
        XCTAssertEqual(str.withoutSpacesAndNewLines, "HelloWorld")
    }
    
    func testWords() {
        let str = "Hello World"
        XCTAssertEqual(str.words().first, "Hello")
        XCTAssertEqual(str.words().last, "World")
    }
    
    func testWordCount() {
        let str = "Hello World"
        XCTAssertEqual(str.wordCount(), 2)
    }
    
    func testContainsString() {
        var str = "This is awesome!"
        XCTAssertTrue (str.contains("this", caseSensitive: false))
         str = "This is awesome!"
        XCTAssertFalse (str.contains("hello", caseSensitive: false))
         str = "This is awesome!"
        XCTAssertTrue (str.contains("This", caseSensitive: true))
         str = "This is awesome!"
        XCTAssertFalse (str.contains("hello", caseSensitive: true))
    }

    func testRandom() {
       let str = String.random(ofLength: 5)
        XCTAssertEqual(str.charactersArray.count, 5)

    }
    
    func testReverse() {
        var str = "Hello World"
        str.reverse()
        XCTAssertEqual(str, "dlroW olleH")
    }
    
    func testTruncate() {
        var str = "Hello World"
        str.truncate(toLength: 5)
        XCTAssertEqual(str, "Hello")
        str.truncate(toLength: 3, trailing: "!")
        XCTAssertEqual(str, "Hel!")

    }
    
    func testRemovingPrefix() {
        let str = "Hey, Hello World"
        let nStr = str.removingPrefix("Hey,")
        XCTAssertEqual(nStr, " Hello World")
    }
    
    func testRemovingSuffix() {
        let str = "Hello World!!"
        let nStr = str.removingSuffix("!!")
        XCTAssertEqual(nStr, "Hello World")
    }

    func testRemoveLastComponentSeparatedBy() {
        let str = "Hello World!!"
        let nStr = str.removeLastComponentSeparatedBy(separator: "W")
        XCTAssertEqual(nStr, "Hello ")
    }
    
    func testCombineStringsForArray() {
        let strArray = ["This", "is", "something", "Awesome!"]
        var str =  ""
        str.combineStringsForArray(stringArray: strArray, with: " ")
        XCTAssertEqual(str, "This is something Awesome!")
    }
    
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
