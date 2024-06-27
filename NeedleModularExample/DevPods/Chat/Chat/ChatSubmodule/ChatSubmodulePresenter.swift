import Foundation
import Core

protocol IChatSubmodulePresenter {
    func action()
}

class ChatSubmodulePresenter: BasePresenter, IChatSubmodulePresenter {
    private let logger: ILogger
    private let chatService2: IChatService2

    init(scope: Any, logger: ILogger, chatService2: IChatService2) {
        self.logger = logger
        self.chatService2 = chatService2
        super.init(scope: scope)
    }

    func action() {
        print("ChatSubmodulePresenter", logger)
        print("ChatSubmodulePresenter", chatService2)
    }
}
