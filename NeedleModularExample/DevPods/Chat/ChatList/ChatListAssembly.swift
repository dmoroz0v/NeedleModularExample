import Foundation

public class ChatListAssembly {
    
    private let componentProvider: () -> (ChatListComponent)
    
    init(componentProvider: @escaping @autoclosure () -> (ChatListComponent)) {
        self.componentProvider = componentProvider
    }
    
    func assemble() -> UIViewController {
        let component = componentProvider()
        let presenter = ChatListPresenter(scope: component, logger: component.logger, chatService: component.chatService)
        let viewController = ChatListViewController(presenter: presenter)
        return viewController
    }
}
