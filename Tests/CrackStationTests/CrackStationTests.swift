import XCTest
import CrackStation

final class CKTests: XCTestCase {
    
   
    
    func testing_Crackaa() async {
        
        let crackStation = CrackStation()
        
        
        
        let plainText = crackStation.decrypt(shaHash: "4594609b79e4760fe756dc2b83f0bf380a3f594f")
        XCTAssertEqual(plainText, "zds")
        
        
    }
    
    func testing_CrackAA() async {
        
        let crackStation = CrackStation()
        
        
        
        let plainText = crackStation.decrypt(shaHash: "801c34269f74ed383fc97de33604b8a905adb635")
        XCTAssertEqual(plainText, "AA")
        
        
    }
    
    func testing_Crack11() async {
        
        let crackStation = CrackStation()
        
       
        
        
        let plainText = crackStation.decrypt(shaHash: "17ba0791499db908433b80f37c5fbc89b870084b")
        XCTAssertEqual(plainText, "11")
        
        
    }
    
    func testing_CrackaA() async {
        
        let crackStation = CrackStation()
        
     
        
        let plainText = crackStation.decrypt(shaHash: "af6917443d0200038faaf39e1f7f0f8983048b1c")
        XCTAssertEqual(plainText, "aA")
        
        
    }
    
    func testing_CrackAa() async {
        
        let crackStation = CrackStation()
        
        
        
        let plainText = crackStation.decrypt(shaHash: "2c419ecc92764743f64744ccdd6bcb85e34e5ae8")
        XCTAssertEqual(plainText, "Aa")
        
        
    }
    
    func testing_Cracka1() async {
        
        let crackStation = CrackStation()
        
  
        
        let plainText = crackStation.decrypt(shaHash: "f29bc91bbdab169fc0c0a326965953d11c7dff83")
        XCTAssertEqual(plainText, "a1")
        
        
    }
    
    func testing_Crack1a() async {
        
        let crackStation = CrackStation()
        
                
        
        let plainText = crackStation.decrypt(shaHash: "9b2c3280ccea0ba408270c45185bfbcd36164237")
        XCTAssertEqual(plainText, "1a")
        
        
    }
    
    func testing_CrackA1() async {
        
        let crackStation = CrackStation()
        
       
        
        
        let plainText = crackStation.decrypt(shaHash: "1ffd4ba3eb9ffadf4db3c3ff4c1bbcf94a64cc59")
        XCTAssertEqual(plainText, "A1")
        
        
    }
    
    func testing_Crack1A() async {
        
        let crackStation = CrackStation()
        
        
        let plainText = crackStation.decrypt(shaHash: "049efd082748b3db82a4edbdafedbd51e8e8d4ba")
        XCTAssertEqual(plainText, "1A")
        
        
    }
    
}
