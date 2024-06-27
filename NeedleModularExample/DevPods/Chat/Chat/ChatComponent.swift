import NeedleFoundation
import Core

public protocol ChatDependency: Dependency {
    var logger: ILogger { get }
    var chatService: IChatService { get }
}

public class ChatComponent: Component<ChatDependency> {
    public var chatSubmoduleAssembly: ChatSubmoduleAssembly {
        ChatSubmoduleAssembly(componentProvider: ChatSubmoduleComponent(parent: self))
    }

//    public var logger: ILogger { shared { Logger() } }
}
