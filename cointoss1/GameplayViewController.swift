import UIKit
import cointoss

class GameplayViewController: UIViewController {
    @IBOutlet weak var coinImageView: UIImageView!

    var gameplayManager: GameplayManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        gameplayManager = GameplayManager(viewController: self)
        gameplayManager.startGame()
    }
}
