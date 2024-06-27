import NeedleFoundation
import Core
import AuthTabBar
import Chat

public protocol MySDKDependencies {
    //
}

public class MySDKComponent: BootstrapComponent {

    private let dependencies: MySDKDependencies

    public init(dependencies: MySDKDependencies) {
        self.dependencies = dependencies
    }

    public var authTabBarCoordinatorAssembly: AuthTabBarCoordinatorAssembly {
        AuthTabBarCoordinatorAssembly(componentProvider: AuthTabBarCoordinatorComponent(parent: self))
    }

    public var chatCoordinatorAssembly: ChatCoordinatorAssembly {
        ChatCoordinatorAssembly(componentProvider: ChatCoordinatorComponent(parent: self))
    }

    public var logger: ILogger { shared { Logger() } }
}
