import Foundation
public class CrackStation: Decrypter {
    
    private let hashDict:[String:String]
        
    public required init() {
        self.hashDict = try! JSONSerialization.jsonObject(with: Data(contentsOf: Bundle.module.url(forResource: "data", withExtension: "json")!)) as? [String:String] ?? [:]
    }
    
    public func decrypt(shaHash: String) -> String? {
        return hashDict[shaHash]
    }
}



