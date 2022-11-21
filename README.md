# Crackstation, A Decrypter Implementation


This library Cracks the unsalted hashes


## Overview
This library is capable of cracking any hash upto 3 charecters in length which matches the regular expression "[A-Za-z0-9?!]{1,3}". It can also crack passwords which are encrypted using SHA-1 or SHA-256.

## Mission Statement

My objective by this project was to spread awareness about how secure our passwords are and how much more secure they can be.

## Installation
### Swift package Manager
The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing and distributing of swift code. It's integrated with the swift build system to automate the process of downloading, compiling and linking dependencies."

Once you have yourswift package set up, add CrackStation to the list of dependencies in your package.swift file:

```swift
    dependencies: [
        .package(url: "git@github.com:AmanPandita/CrackStation.git", from: "1.2.0"),
    ]
```


## Usage
### The API
The CrackStation constructor.

```swift
public required init() {
        self.hashDict = [:]
        if let path = Bundle.module.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: path)
                let jsonResult = try JSONSerialization.jsonObject(with: data)
                if let jsonResult = jsonResult as? [String:String] {
                    self.hashDict = jsonResult
                }
            } catch {
                self.hashDict = [:]
            }
        }
```


The function below returns the plain-text password, if not found the function returns ```nil```.
```swift
public func decrypt(shaHash: String) -> String? {
        if(hashDict[shaHash] != nil) {
            return hashDict[shaHash]
        }
        else {
            return nil
        }
```



### An Example

```swift
import XCTest
import CrackStation

final class CrackStationTests: XCTestCase {
    func testCrackStation() async {
    
        let crackStation = CrackStation()
        
        plainText = crackStation.decrypt(shaHash: "cbf2a7ed1893d2686ae9ec75712d340c8b9f50e7bcd7698ee43ea2e3b42e3911")
        XCTAssertEqual(plainText, "ab!")
        
    }
}
```

# Author
Aman Pandita
