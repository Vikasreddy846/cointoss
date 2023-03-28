//
//  CoinToss.swift
//  cointoss
//
//  Created by Priya Wong on 3/27/23.
//

protocol CoinTossDelegate: AnyObject {
    func didTossCoin(_ coinToss: CoinToss)
}

class CoinToss {
    var coin: Coin?
    weak var delegate: CoinTossDelegate?

    func tossCoin() {
        let random = Int.random(in: 0...1)
        coin = random == 0 ? .heads : .tails
        delegate?.didTossCoin(self)
    }
}
