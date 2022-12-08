import ProjectDescription

public extension SettingsDictionary {

    /// Setup project's version number
    @discardableResult
    func versionNumber(_ value: String) -> SettingsDictionary {
        self.merging(["MARKETING_VERSION": SettingValue(stringLiteral: value)])
    }

    /// Setup project's build number
    @discardableResult
    func buildNumber(_ value: Int) -> SettingsDictionary {
        self.merging(["CURRENT_PROJECT_VERSION": SettingValue(stringLiteral: "\(value)")])
    }

    /// Setup project's bundle identifier
    @discardableResult
    func bundleIdentifier(_ value: String) -> SettingsDictionary {
        self.merging(["PRODUCT_BUNDLE_IDENTIFIER": SettingValue(stringLiteral: value)])
    }

    /// Setup project's debug information format
    @discardableResult
    func debugInformationFormat(_ value: String) -> SettingsDictionary {
        self.merging(["DEBUG_INFORMATION_FORMAT": SettingValue(stringLiteral: value)])
    }

    /// Setup path to bridging header
    @discardableResult
    func bridgingHeaderPath(_ value: String) -> SettingsDictionary {
        self.merging(["SWIFT_OBJC_BRIDGING_HEADER": SettingValue(stringLiteral: value)])
    }

    /// Setup application's icon name
    @discardableResult
    func appIconName(_ value: String) -> SettingsDictionary {
        self.merging(["ASSETCATALOG_COMPILER_APPICON_NAME": SettingValue(stringLiteral: value)])
    }

    /// Setup development language
    @discardableResult
    func developmentLanguage(_ value: String) -> SettingsDictionary {
        self.merging(["DEVELOPMENT_LANGUAGE": SettingValue(stringLiteral: value)])
    }

    /// Allow to launch applications with SwiftUI in third party libs on iOS 12
    @discardableResult
    func enableWeakFrameworkSwiftUI() -> SettingsDictionary {
        self.merging(["OTHER_LDFLAGS" : .array(["$(inherited)", "-weak_framework SwiftUI"])])
    }
    
    /// Add header search pathes
    @discardableResult
    func headersSearchPath(_ value: [String]) -> SettingsDictionary {
        self.merging(["OTHER_LDFLAGS" : .array(["$(inherited)"] + value)])
    }

}

public extension String {

    /// `DWARF` Debug information format
    static var dwarfDebugInformationFormat = "dwarf"

    /// `DWARF with dSYM` Debug information format
    static var dwarfWithDsymDebugInformationFormat = "dwarf-with-dsym"
}
