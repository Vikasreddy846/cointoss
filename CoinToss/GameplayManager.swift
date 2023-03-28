//
//  GameplayManager.swift
//  cointoss
//
//  Created by Priya Wong on 3/27/23.
//

class GameplayManager: CoinTossDelegate {
    let coinToss = CoinToss()
    let viewController: UIViewController

    init(viewController: UIViewController) {
        self.viewController = viewController
        coinToss.delegate = self
    }

    func startGame() {
        coinToss.tossCoin()
    }

    func didTossCoin(_ coinToss: CoinToss) {
        guard let coin = coinToss.coin else { return }
        let imageName = coin == .heads ? "heads" : "tails"
        if let vc = viewController as? GameplayViewController {
            vc.coinImageView.image = UIImage(named: imageName)
        }
    }
}
