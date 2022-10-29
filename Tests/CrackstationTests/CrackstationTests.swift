import XCTest
import Crackstation

final class CKTests: XCTestCase {
    
    func testCK() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        var plainText = crackStation.decrypt(shaHash: "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8")
        XCTAssertEqual(plainText, "a")
        
        plainText = crackStation.decrypt(shaHash: "0ade7c2cf97f75d009975f4d720d1fa6c19f4897")
        XCTAssertEqual(plainText, "9")
        
        
    }
    
    func testCKaa() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "e0c9035898dd52fc65c41454cec9c4d2611bfb37")
        XCTAssertEqual(plainText, "aa")
        
        
    }
    
    func testCKAA() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "801c34269f74ed383fc97de33604b8a905adb635")
        XCTAssertEqual(plainText, "AA")
        
        
    }
    
    func testCK11() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "17ba0791499db908433b80f37c5fbc89b870084b")
        XCTAssertEqual(plainText, "11")
        
        
    }
    
    func testCKaA() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "af6917443d0200038faaf39e1f7f0f8983048b1c")
        XCTAssertEqual(plainText, "aA")
        
        
    }
    
    func testCKAa() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "2c419ecc92764743f64744ccdd6bcb85e34e5ae8")
        XCTAssertEqual(plainText, "Aa")
        
        
    }
    
    func testCKa1() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "f29bc91bbdab169fc0c0a326965953d11c7dff83")
        XCTAssertEqual(plainText, "a1")
        
        
    }
    
    func testCK1a() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "9b2c3280ccea0ba408270c45185bfbcd36164237")
        XCTAssertEqual(plainText, "1a")
        
        
    }
    
    func testCKA1() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "1ffd4ba3eb9ffadf4db3c3ff4c1bbcf94a64cc59")
        XCTAssertEqual(plainText, "A1")
        
        
    }
    
    func testCK1A() async {
        
        let crackStation = CrackStation()
        
        let result = await crackStation.generateHash()
        XCTAssertEqual(result, true)
        
        
        let plainText = crackStation.decrypt(shaHash: "049efd082748b3db82a4edbdafedbd51e8e8d4ba")
        XCTAssertEqual(plainText, "1A")
        
        
    }
    
}
