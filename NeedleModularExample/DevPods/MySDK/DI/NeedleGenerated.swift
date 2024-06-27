

import AuthTabBar
import Chat
import Core
import NeedleFoundation

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

private func parent2(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent.parent
}

private func parent3(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent.parent.parent
}

private func parent4(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent.parent.parent.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class ChatListDependency782ce349e12de7177437Provider: ChatListDependency {
    var logger: ILogger {
        return mySDKComponent.logger
    }
    var chatService: IChatService {
        return chatCoordinatorComponent.chatService
    }
    private let chatCoordinatorComponent: ChatCoordinatorComponent
    private let mySDKComponent: MySDKComponent
    init(chatCoordinatorComponent: ChatCoordinatorComponent, mySDKComponent: MySDKComponent) {
        self.chatCoordinatorComponent = chatCoordinatorComponent
        self.mySDKComponent = mySDKComponent
    }
}
/// ^->MySDKComponent->AuthTabBarCoordinatorComponent->ChatCoordinatorComponent->ChatListComponent
private func factoryeec0b84587a28451693cc9064be59c2b0c79226f(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatListDependency782ce349e12de7177437Provider(chatCoordinatorComponent: parent1(component) as! ChatCoordinatorComponent, mySDKComponent: parent3(component) as! MySDKComponent)
}
/// ^->MySDKComponent->ChatCoordinatorComponent->ChatListComponent
private func factoryeec0b84587a28451693c1d1febac61053e4a7b4d(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatListDependency782ce349e12de7177437Provider(chatCoordinatorComponent: parent1(component) as! ChatCoordinatorComponent, mySDKComponent: parent2(component) as! MySDKComponent)
}
private class ChatSubmoduleDependency1f5bcd4b1624894fe633Provider: ChatSubmoduleDependency {
    var logger: ILogger {
        return mySDKComponent.logger
    }
    private let mySDKComponent: MySDKComponent
    init(mySDKComponent: MySDKComponent) {
        self.mySDKComponent = mySDKComponent
    }
}
/// ^->MySDKComponent->AuthTabBarCoordinatorComponent->ChatCoordinatorComponent->ChatComponent->ChatSubmoduleComponent
private func factoryf0acb76565f2c3438bc71a1a90042d64a4ac9726(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatSubmoduleDependency1f5bcd4b1624894fe633Provider(mySDKComponent: parent4(component) as! MySDKComponent)
}
/// ^->MySDKComponent->ChatCoordinatorComponent->ChatComponent->ChatSubmoduleComponent
private func factoryf0acb76565f2c3438bc7d03c23f404fa9978839f(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatSubmoduleDependency1f5bcd4b1624894fe633Provider(mySDKComponent: parent3(component) as! MySDKComponent)
}
private class ChatDependency12e68a3539a5c0859be7Provider: ChatDependency {
    var logger: ILogger {
        return mySDKComponent.logger
    }
    var chatService: IChatService {
        return chatCoordinatorComponent.chatService
    }
    private let chatCoordinatorComponent: ChatCoordinatorComponent
    private let mySDKComponent: MySDKComponent
    init(chatCoordinatorComponent: ChatCoordinatorComponent, mySDKComponent: MySDKComponent) {
        self.chatCoordinatorComponent = chatCoordinatorComponent
        self.mySDKComponent = mySDKComponent
    }
}
/// ^->MySDKComponent->AuthTabBarCoordinatorComponent->ChatCoordinatorComponent->ChatComponent
private func factory43bda3f3e9b12c86d176c9064be59c2b0c79226f(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatDependency12e68a3539a5c0859be7Provider(chatCoordinatorComponent: parent1(component) as! ChatCoordinatorComponent, mySDKComponent: parent3(component) as! MySDKComponent)
}
/// ^->MySDKComponent->ChatCoordinatorComponent->ChatComponent
private func factory43bda3f3e9b12c86d1761d1febac61053e4a7b4d(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatDependency12e68a3539a5c0859be7Provider(chatCoordinatorComponent: parent1(component) as! ChatCoordinatorComponent, mySDKComponent: parent2(component) as! MySDKComponent)
}
private class ChatCoordinatorDependencyc15a9a8057402313b63dProvider: ChatCoordinatorDependency {
    var logger: ILogger {
        return mySDKComponent.logger
    }
    private let mySDKComponent: MySDKComponent
    init(mySDKComponent: MySDKComponent) {
        self.mySDKComponent = mySDKComponent
    }
}
/// ^->MySDKComponent->AuthTabBarCoordinatorComponent->ChatCoordinatorComponent
private func factory0e81df94ab6546e9be06abc48a96600bceea8e80(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatCoordinatorDependencyc15a9a8057402313b63dProvider(mySDKComponent: parent2(component) as! MySDKComponent)
}
/// ^->MySDKComponent->ChatCoordinatorComponent
private func factory0e81df94ab6546e9be0646738407f960865ddba7(_ component: NeedleFoundation.Scope) -> AnyObject {
    return ChatCoordinatorDependencyc15a9a8057402313b63dProvider(mySDKComponent: parent1(component) as! MySDKComponent)
}
private class AuthTabBarCoordinatorDependency5f00c6c61db2c63dfb83Provider: AuthTabBarCoordinatorDependency {


    init() {

    }
}
/// ^->MySDKComponent->AuthTabBarCoordinatorComponent
private func factory4a631e964bd43ea8594ee3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return AuthTabBarCoordinatorDependency5f00c6c61db2c63dfb83Provider()
}

#else
extension ChatListComponent: Registration {
    public func registerItems() {
        keyPathToName[\ChatListDependency.logger] = "logger-ILogger"
        keyPathToName[\ChatListDependency.chatService] = "chatService-IChatService"
    }
}
extension ChatSubmoduleComponent: Registration {
    public func registerItems() {
        keyPathToName[\ChatSubmoduleDependency.logger] = "logger-ILogger"
    }
}
extension ChatComponent: Registration {
    public func registerItems() {
        keyPathToName[\ChatDependency.logger] = "logger-ILogger"
        keyPathToName[\ChatDependency.chatService] = "chatService-IChatService"
        localTable["chatSubmoduleAssembly-ChatSubmoduleAssembly"] = { [unowned self] in self.chatSubmoduleAssembly as Any }
    }
}
extension ChatCoordinatorComponent: Registration {
    public func registerItems() {
        keyPathToName[\ChatCoordinatorDependency.logger] = "logger-ILogger"
        localTable["chatAssembly-ChatAssembly"] = { [unowned self] in self.chatAssembly as Any }
        localTable["chatListAssembly-ChatListAssembly"] = { [unowned self] in self.chatListAssembly as Any }
        localTable["chatService-IChatService"] = { [unowned self] in self.chatService as Any }
    }
}
extension AuthTabBarCoordinatorComponent: Registration {
    public func registerItems() {

        localTable["chatCoordinatorAssembly-ChatCoordinatorAssembly"] = { [unowned self] in self.chatCoordinatorAssembly as Any }
    }
}
extension MySDKComponent: Registration {
    public func registerItems() {

        localTable["authTabBarCoordinatorAssembly-AuthTabBarCoordinatorAssembly"] = { [unowned self] in self.authTabBarCoordinatorAssembly as Any }
        localTable["chatCoordinatorAssembly-ChatCoordinatorAssembly"] = { [unowned self] in self.chatCoordinatorAssembly as Any }
        localTable["logger-ILogger"] = { [unowned self] in self.logger as Any }
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->MySDKComponent->AuthTabBarCoordinatorComponent->ChatCoordinatorComponent->ChatListComponent", factoryeec0b84587a28451693cc9064be59c2b0c79226f)
    registerProviderFactory("^->MySDKComponent->ChatCoordinatorComponent->ChatListComponent", factoryeec0b84587a28451693c1d1febac61053e4a7b4d)
    registerProviderFactory("^->MySDKComponent->AuthTabBarCoordinatorComponent->ChatCoordinatorComponent->ChatComponent->ChatSubmoduleComponent", factoryf0acb76565f2c3438bc71a1a90042d64a4ac9726)
    registerProviderFactory("^->MySDKComponent->ChatCoordinatorComponent->ChatComponent->ChatSubmoduleComponent", factoryf0acb76565f2c3438bc7d03c23f404fa9978839f)
    registerProviderFactory("^->MySDKComponent->AuthTabBarCoordinatorComponent->ChatCoordinatorComponent->ChatComponent", factory43bda3f3e9b12c86d176c9064be59c2b0c79226f)
    registerProviderFactory("^->MySDKComponent->ChatCoordinatorComponent->ChatComponent", factory43bda3f3e9b12c86d1761d1febac61053e4a7b4d)
    registerProviderFactory("^->MySDKComponent->AuthTabBarCoordinatorComponent->ChatCoordinatorComponent", factory0e81df94ab6546e9be06abc48a96600bceea8e80)
    registerProviderFactory("^->MySDKComponent->ChatCoordinatorComponent", factory0e81df94ab6546e9be0646738407f960865ddba7)
    registerProviderFactory("^->MySDKComponent->AuthTabBarCoordinatorComponent", factory4a631e964bd43ea8594ee3b0c44298fc1c149afb)
    registerProviderFactory("^->MySDKComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
