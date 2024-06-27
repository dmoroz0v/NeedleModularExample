import Foundation

public class ChatAssembly {

    private let componentProvider: () -> (ChatComponent)
    
    public init(componentProvider: @escaping @autoclosure () -> (ChatComponent)) {
        self.componentProvider = componentProvider
    }
    
    public func assemble() -> UIViewController {
        let component = componentProvider()
        let presenter = ChatPresenter(
            scope: component,
            logger: component.logger,
            chatService: component.chatService,
            chatSubmoduleAssembly: component.chatSubmoduleAssembly
        )
        let viewController = ChatViewController(presenter: presenter)
        return viewController
    }
}
