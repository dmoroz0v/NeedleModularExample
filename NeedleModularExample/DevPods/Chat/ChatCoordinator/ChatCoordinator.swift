import Foundation
import Core

public protocol IChatCoordinator {
    func action()
}

class ChatCoordinator: BaseCoordinator, IChatCoordinator {
    private let chatListAssembly: ChatListAssembly
    private let chatAssembly: ChatAssembly
    
    init(scope: Any, chatListAssembly: ChatListAssembly, chatAssembly: ChatAssembly) {
        self.chatListAssembly = chatListAssembly
        self.chatAssembly = chatAssembly
        super.init(scope: scope)
    }

    func action() {
        chatListAssembly.assemble().loadViewIfNeeded()
        chatAssembly.assemble().loadViewIfNeeded()
    }

}
