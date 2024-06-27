import NeedleFoundation
import Core

public protocol ChatCoordinatorDependency: Dependency {
    var logger: ILogger { get }
}

public class ChatCoordinatorComponent: Component<ChatCoordinatorDependency> {

    public var chatAssembly: ChatAssembly {
        ChatAssembly(componentProvider: ChatComponent(parent: self))
    }
    
    public var chatListAssembly: ChatListAssembly {
        ChatListAssembly(componentProvider: ChatListComponent(parent: self))
    }

    public var chatService: IChatService {
        shared { ChatService() }
    }
}
