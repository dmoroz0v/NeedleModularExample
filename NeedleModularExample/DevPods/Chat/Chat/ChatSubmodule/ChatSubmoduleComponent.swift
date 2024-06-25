import NeedleFoundation
import Core

protocol ChatSubmoduleDependency: Dependency {
    var logger: ILogger { get }
}

protocol IChatSubmoduleComponent {
    var logger: ILogger { get }
    var chatService2: IChatService2 { get }
}

class ChatSubmoduleComponent: Component<ChatSubmoduleDependency>, IChatSubmoduleComponent {
    var logger: ILogger { dependency.logger }
    var chatService2: IChatService2 { shared { ChatService2() } }
}
