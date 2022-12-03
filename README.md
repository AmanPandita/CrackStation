# Crackstation, A Decrypter Implementation


This library works on the principle of cracking unsalted hashes that are up to three charecters in length and matches the regular expression `[A-Za-z0-9?!]{1,3}`. Moreover, it can also manage cracking the SHA-1 and SHA-256 encrypted passwords.

## Overview
Password braches are becoming very repetetive in the recent days and it is important to demonsatrate how insecure the storage of unsalted hases are. Password safety is something everyone should be aware of so, this would also encourage healthy password practices.

## Mission Statement

This is strictly meant for **educational practices** only and any sort of unethical practices are not encouraged. My objective by this project was to spread awareness about how secure our passwords are and how much more secure they can be.

## Installation
### Swift Package Manager
The [Swift Package Manager](https://www.swift.org/package-manager/) is "a tool for managing and distributing of swift code. It's integrated with the swift build system to automate the process of downloading, compiling and linking dependencies."

Once you have yourswift package set up, add CrackStation to the list of dependencies in your package.swift file:

```swift
    dependencies: [
        .package(url: "git@github.com:AmanPandita/CrackStation.git", from: "1.2.2"),
    ]
```


## Usage
### The API
The CrackStation constructor.

```swift
public required init() {
        self.hashDict = try! JSONSerialization.jsonObject(with: Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)) as? [String:String] ?? [:]
    }
```


The function below returns the plain-text password, if not found the function returns ```nil```.
```swift
public func decrypt(shaHash: String) -> String? {
        return hashDict[shaHash]
    }
```



### An Example

```swift
import CrackStation

    func testing_Crackaa() async {
        
        let crackStation = CrackStation()
        let plainText = crackStation.decrypt(shaHash: "4594609b79e4760fe756dc2b83f0bf380a3f594f")
        assert(plainText, "zds")
    }
```

# Author
Aman Pandita
