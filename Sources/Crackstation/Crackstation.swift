import Foundation
import CryptoKit


public class CrackStation : Decrypter
{
    public func decrypt(shaHash: String) -> String? {
        if UserDefaults.standard.object(forKey: "dict") != nil {
            let hashDict = UserDefaults.standard.object(forKey: "dict") as? [String:String]
            return hashDict?["SHA1 digest: \(shaHash)"]
        }
        return nil
    }
    
    
    private let LCalbhabets: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    private let UCalbhabets: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    private let num: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    private var dict:[String:String]
    
    required public init() {
        self.dict = [:]
    }
    
    private func encryptUsingSha1(from input: String) -> String {
        let inputData = Data(input.utf8)
        let output = Insecure.SHA1.hash(data: inputData)
        return output.description
    }
    
    public func generateHash() async -> Bool{
        
        for a in LCalbhabets {
            dict[encryptUsingSha1(from: a)] = a
        }
        for a in UCalbhabets {
            dict[encryptUsingSha1(from: a)] = a
        }
        for n in num {
                dict[encryptUsingSha1(from: n)] = n
        }
        /// aA
        for a in LCalbhabets {
            for b in UCalbhabets {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        /////Aa
        for a in  UCalbhabets {
            for b in LCalbhabets {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        //A1
        for a in  UCalbhabets {
            for b in num {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        //1A
        for a in  num {
            for b in UCalbhabets {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        //a1
        for a in  LCalbhabets {
            for b in num {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        //1a
        for a in  num {
            for b in LCalbhabets {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        //aa
        for a in  LCalbhabets {
            for b in LCalbhabets {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        //AA
        for a in  UCalbhabets {
            for b in UCalbhabets {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        //11
        for a in  num {
            for b in num {
                dict[encryptUsingSha1(from: a+b)] = a+b
            }
            
        }
        
        UserDefaults.standard.set(dict, forKey: "dict")
        
        if UserDefaults.standard.object(forKey: "dict") != nil {
            return true
        }
        else {
            return false
        }
    }
    
    public func crack(password: String) -> String? {
        if UserDefaults.standard.object(forKey: "dict") != nil {
            let hashDict = UserDefaults.standard.object(forKey: "dict") as? [String:String]
            return hashDict?["SHA1 digest: \(password)"]
        }
        return nil
    }
}
