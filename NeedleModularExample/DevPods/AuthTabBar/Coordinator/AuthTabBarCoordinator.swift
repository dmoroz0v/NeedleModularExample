import Foundation
import Core
import Chat

public protocol IAuthTabBarCoordinator {
    func action()
}

class AuthTabBarCoordinator: BaseCoordinator, IAuthTabBarCoordinator {
    private let chatCoordinatorAssembly: ChatCoordinatorAssembly
    
    init(scope: Any, chatCoordinatorAssembly: ChatCoordinatorAssembly) {
        self.chatCoordinatorAssembly = chatCoordinatorAssembly
        super.init(scope: scope)
    }
    
    func action() {
        chatCoordinatorAssembly.assemble().action()
    }
}
