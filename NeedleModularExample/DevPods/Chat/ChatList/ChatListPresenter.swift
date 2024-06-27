import Foundation
import Core

protocol IChatListPresenter {
    func action()
}

class ChatListPresenter: BasePresenter, IChatListPresenter {
    private let logger: ILogger
    private let chatService: IChatService
    
    init(scope: Any, logger: ILogger, chatService: IChatService) {
        self.chatService = chatService
        self.logger = logger
        super.init(scope: scope)
    }

    func action() {
        print("ChatListPresenter", logger)
        print("ChatListPresenter", chatService)
    }
}
