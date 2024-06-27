import Foundation

public class ChatSubmoduleAssembly {

    private let componentProvider: () -> (ChatSubmoduleComponent)

    public init(componentProvider: @escaping @autoclosure () -> (ChatSubmoduleComponent)) {
        self.componentProvider = componentProvider
    }

    public func assemble() -> UIViewController {
        let component = componentProvider()
        let presenter = ChatSubmodulePresenter(scope: component, logger: component.logger, chatService2: component.chatService2)
        let viewController = ChatSubmoduleViewController(presenter: presenter)
        return viewController
    }
}
