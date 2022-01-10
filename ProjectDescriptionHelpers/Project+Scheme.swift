import ProjectDescription

public extension Scheme {

    /// Creates scheme for project launch
    /// - Parameters:
    ///   - forTargets: array of targets, that included in the scheme
    ///   - forConfiguration: configuration's name
    ///   - name: specific name for scheme
    ///   - arguments: scheme's arguments
    ///   - buildPreActions: array of build's pre actions
    ///   - buildPostActions: array of build's post actions
    /// - Returns: project scheme
    static func scheme(
        forTargets targets: [TargetReference],
        forConfiguration configuration: ConfigurationName,
        name: String? = nil,
        arguments: Arguments? = nil,
        buildPreActions: [ExecutionAction] = [],
        buildPostActions: [ExecutionAction] = []
    ) -> Scheme {
        let schemeName = [configuration.rawValue, name].compactMap { $0 }.joined(separator: " - ")
        return Scheme(
            name: schemeName,
            shared: true,
            buildAction: .buildAction(
                targets: targets,
                preActions: buildPreActions,
                postActions: buildPostActions
            ),
            runAction: .runAction(
                configuration: configuration,
                arguments: arguments
            ),
            archiveAction: .archiveAction(
                configuration: configuration
            )
        )
    }
}
