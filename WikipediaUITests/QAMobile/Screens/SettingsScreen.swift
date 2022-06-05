
import XCTest

class SettingsScreen: BaseScreen {

    private enum Identifiers {
        static let aboutWikipedia = "О приложении"
        static let donate = "Поддержать Википедию"
        static let bundle = "com.apple.mobilesafari"
    }
    
    func tapAboutWikipedia() {
        let aboutWikipediaButton = app.staticTexts[Identifiers.aboutWikipedia]
        aboutWikipediaButton.tap()
    }
    
    func tapDonate() -> Self {
        let donateButton = app.staticTexts[Identifiers.donate]
        donateButton.tap()
        return self
    }
    
    func verifyRedirect() {
        let safari = XCUIApplication(bundleIdentifier: Identifiers.bundle)
        let isSafariBrowserOpen = safari.wait(for: .runningForeground, timeout: 10)
        XCTAssertTrue(isSafariBrowserOpen, "Переход в браузер не выполнен")
        safari.terminate()
    }
}
