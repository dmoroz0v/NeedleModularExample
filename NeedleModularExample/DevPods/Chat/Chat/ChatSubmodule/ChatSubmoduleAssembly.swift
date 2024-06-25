import Foundation

protocol IChatSubmoduleAssembly {
    func assemble() -> UIViewController
}

class ChatSubmoduleAssembly: IChatSubmoduleAssembly {

    private let componentProvider: () -> (IChatSubmoduleComponent)

    init(componentProvider: @escaping () -> (IChatSubmoduleComponent)) {
        self.componentProvider = componentProvider
    }

    func assemble() -> UIViewController {
        let component = componentProvider()
        let presenter = ChatSubmodulePresenter(scope: component, logger: component.logger, chatService2: component.chatService2)
        let viewController = ChatSubmoduleViewController(presenter: presenter)
        return viewController
    }
}
