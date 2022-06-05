
import XCTest

open class BaseTest: XCTestCase {
    
    private var baseScreen = BaseScreen()
    
    private enum Identifiers {
        static let settings = "Настройки"
        static let close = "Закрыть"
    }
    
    public enum TestData {
        static let autors = "Авторы"
        static let translators = "Переводчики"
        static let license = "Лицензия содержимого"
    }

    lazy var app = baseScreen.app
    
    open override func setUp() {
        app.launch()
        continueAfterFailure = false
        closeSettings()
    }

    open override func tearDown() {
        app.terminate()
    }
    
    func closeSettings() {
        let settingsHeader = app.staticTexts[Identifiers.settings]
        if settingsHeader.exists {
            let closeButton = app.buttons[Identifiers.close]
            closeButton.tap()
        }
    }
}
