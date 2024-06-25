import NeedleFoundation
import Core

protocol ChatDependency: Dependency {
    var logger: ILogger { get }
    var chatService: IChatService { get }
}

protocol IChatComponent {
    var logger: ILogger { get }
    var chatService: IChatService { get }
    var chatSubmoduleComponent: IChatSubmoduleComponent { get }
}

class ChatComponent: Component<ChatDependency>, IChatComponent {
    var logger: ILogger { dependency.logger }
    var chatService: IChatService { dependency.chatService }
    var chatSubmoduleComponent: IChatSubmoduleComponent {
        ChatSubmoduleComponent(parent: self)
    }
}
