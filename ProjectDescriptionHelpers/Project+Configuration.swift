import ProjectDescription

public extension ConfigurationName {

    /// Configuration name for Beta releases (Testflight beta versions)
    static var beta: ConfigurationName {
        ConfigurationName("Beta")
    }

    /// Configuration name for Release candidates  (Testflight versions for final testing)
    static var rc: ConfigurationName {
        ConfigurationName("RC")
    }
}
