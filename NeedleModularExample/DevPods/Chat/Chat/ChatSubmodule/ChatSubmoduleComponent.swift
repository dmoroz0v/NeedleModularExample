import NeedleFoundation
import Core

public protocol ChatSubmoduleDependency: Dependency {
    var logger: ILogger { get }
}

public class ChatSubmoduleComponent: Component<ChatSubmoduleDependency> {
    public var chatService2: IChatService2 = ChatService2()
}
