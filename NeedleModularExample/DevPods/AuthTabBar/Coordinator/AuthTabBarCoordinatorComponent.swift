import NeedleFoundation
import Chat

public protocol AuthTabBarCoordinatorDependency: Dependency {
}

public class AuthTabBarCoordinatorComponent: Component<AuthTabBarCoordinatorDependency> {

    public var chatCoordinatorAssembly: ChatCoordinatorAssembly {
        ChatCoordinatorAssembly(componentProvider: ChatCoordinatorComponent(parent: self))
    }

}
