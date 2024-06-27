import Foundation

public class ChatCoordinatorAssembly {
    
    private let componentProvider: () -> (ChatCoordinatorComponent)
    
    public init(componentProvider: @escaping @autoclosure () -> ChatCoordinatorComponent) {
        self.componentProvider = componentProvider
    }
    
    public func assemble() -> IChatCoordinator {
        let component = componentProvider()
        let coordinator = ChatCoordinator(
            scope: component,
            chatListAssembly: component.chatListAssembly,
            chatAssembly: component.chatAssembly
        )
        return coordinator
    }
}
