
import XCTest

class UITests: BaseTest {

    override func setUp() {
        super.setUp()
    }
    
    func testCheckRedirectToMostReading() {
        HomeScreen()
            .tapAllMostReading()
            .verifyRedirectToMostReadingScreen()
    }
    
    func testBlockAutors() {
        verifyBlock(blockName: TestData.autors)
    }
    
    func testBlockTranslators() {
        verifyBlock(blockName: TestData.translators)
    }
    
    func testBlockLicense() {
        verifyBlock(blockName: TestData.license)
    }
    
    func testCheckRedirectToBrowser() {
        HomeScreen()
            .tapSettings()
        SettingsScreen()
            .tapDonate()
            .verifyRedirect()
    }
    
    func verifyBlock(blockName: String) {
        HomeScreen()
            .tapSettings()
        SettingsScreen()
            .tapAboutWikipedia()
        AboutWikipediaScreen()
            .checkBlock(blockName: blockName)
    }
}
