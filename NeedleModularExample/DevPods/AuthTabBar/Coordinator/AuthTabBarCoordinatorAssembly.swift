import Foundation
import Chat

public class AuthTabBarCoordinatorAssembly {

    private let componentProvider: () -> (AuthTabBarCoordinatorComponent)

    public init(componentProvider: @escaping @autoclosure () -> (AuthTabBarCoordinatorComponent)) {
        self.componentProvider = componentProvider
    }

    public func assemble() -> IAuthTabBarCoordinator {
        let component = componentProvider()
        let coordinator = AuthTabBarCoordinator(
            scope: component,
            chatCoordinatorAssembly: component.chatCoordinatorAssembly
        )
        return coordinator
    }
}
