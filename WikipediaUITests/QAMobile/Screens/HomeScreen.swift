
import XCTest

class HomeScreen: BaseScreen {

    private enum Identifiers {
        static let allMostReading = "Все самые читаемые статьи"
        static let settings = "Настройки"
    }
    
    func tapAllMostReading() -> MostReadingScreen {
        let allMostReadingButton = app.buttons[Identifiers.allMostReading]
        allMostReadingButton.tap()
        return MostReadingScreen()
    }
    
    func tapSettings() {
        let settingsButton = app.buttons[Identifiers.settings]
        settingsButton.tap()
    }

}
