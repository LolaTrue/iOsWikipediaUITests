
import XCTest

class MostReadingScreen: BaseScreen {

    private enum Identifiers {
        static let mostReading = "Самые читаемые"
    }
    
    func verifyRedirectToMostReadingScreen() {
        let pageHeader = app.staticTexts[Identifiers.mostReading]
        XCTAssertTrue(pageHeader.exists, "Переход на экран \(Identifiers.mostReading) не выполнен")
    }
}
