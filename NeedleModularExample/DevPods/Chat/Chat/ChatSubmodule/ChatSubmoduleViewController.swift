import Foundation

class ChatSubmoduleViewController: UIViewController {
    private let presenter: IChatSubmodulePresenter

    init(presenter: IChatSubmodulePresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
