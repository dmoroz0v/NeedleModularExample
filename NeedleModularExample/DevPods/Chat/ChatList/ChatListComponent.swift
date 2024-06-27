import NeedleFoundation
import Core

public protocol ChatListDependency: Dependency {
    var logger: ILogger { get }
    var chatService: IChatService { get }
}

class ChatListComponent: Component<ChatListDependency> {
}
