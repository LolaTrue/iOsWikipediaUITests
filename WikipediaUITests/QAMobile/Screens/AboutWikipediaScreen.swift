//~~~**DELETE THIS HEADER**~~~

import XCTest

class AboutWikipediaScreen: BaseScreen {

    func checkBlock(blockName: String) {
        let block = app.staticTexts[blockName]
        block.waitForExistence(timeout: 10)
        if  block.isHittable == false {
            app.swipeUp()
            block.waitForExistence(timeout: 10)
        }
        XCTAssertTrue(block.isHittable, "Отсутствует блок \(blockName)")
    }
}
