import Foundation
import Core

protocol IChatPresenter {
    func action()
}

class ChatPresenter: BasePresenter, IChatPresenter {
    private let logger: ILogger
    private let chatService: IChatService
    private let chatSubmoduleAssembly: ChatSubmoduleAssembly

    init(scope: Any, logger: ILogger, chatService: IChatService, chatSubmoduleAssembly: ChatSubmoduleAssembly) {
        self.chatService = chatService
        self.logger = logger
        self.chatSubmoduleAssembly = chatSubmoduleAssembly
        super.init(scope: scope)
    }

    func action() {
        print("ChatPresenter", logger)
        print("ChatPresenter", chatService)

        chatSubmoduleAssembly.assemble().loadViewIfNeeded()
    }
}
