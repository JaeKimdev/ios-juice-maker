//
//  JuiceMaker - HomeViewController.swift
//  Created by Mene, Dragon.
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class HomeViewController: UIViewController {
    
    private let juiceMaker = JuiceMaker()
    
    @IBOutlet weak private var strawberryStockLabel: UILabel!
    @IBOutlet weak private var bananaStockLabel: UILabel!
    @IBOutlet weak private var pineappleStockLabel: UILabel!
    @IBOutlet weak private var kiwiStockLabel: UILabel!
    @IBOutlet weak private var mangoStockLabel: UILabel!
    
    @IBAction private func orderStrawberryJuice(_ sender: UIButton) {
        showAlert(of: .strawBerry)
        checkInventory()
    }
    
    @IBAction private func orderBananaJuice(_ sender: UIButton) {
        showAlert(of: .banana)
        checkInventory()
    }
    
    @IBAction private func orderPineappleJuice(_ sender: UIButton) {
        showAlert(of: .pineApple)
        checkInventory()
    }
    
    @IBAction private func orderKiwiJuice(_ sender: UIButton) {
        showAlert(of: .kiwi)
        checkInventory()
    }
    
    @IBAction private func orderMangoJuice(_ sender: UIButton) {
        showAlert(of: .mango)
        checkInventory()
    }
    
    @IBAction private func orderStrawberryBananaJuice(_ sender: UIButton) {
        showAlert(of: .strawBerryBanana)
        checkInventory()
    }
    
    @IBAction private func orderMangoKiwi(_ sender: UIButton) {
        showAlert(of: .mangoKiwi)
        checkInventory()
    }
    
    private func showAlert(of juice: Juice) {
        if juiceMaker.makeJuice(of: juice) {
            let alert = UIAlertController(title: "제조 완료", message: "\(juice.rawValue)쥬스 나왔습니다! 맛있게 드세요!", preferredStyle: .alert)
            let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
            
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "재고 부족", message: "재료가 모자라요. 재고를 수정할까요?", preferredStyle: .alert)
            let ok = UIAlertAction(title: "재고수정", style: .default, handler: {_ in
                self.presentChangeInventoryViewController()
            })
            let cancel = UIAlertAction(title: "취소", style: .destructive, handler: nil)
            
            alert.addAction(cancel)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    private func presentChangeInventoryViewController() {
        guard let changeInventoryVC = self.storyboard?.instantiateViewController(withIdentifier: "ChangeInventoryViewController") as? ChangeInventoryViewController else { return }
        
        self.present(changeInventoryVC, animated: true)
    }
    
    private func checkInventory() {
        strawberryStockLabel.text = juiceMaker.checkStock(of: .strawBerry)
        bananaStockLabel.text = juiceMaker.checkStock(of: .banana)
        pineappleStockLabel.text = juiceMaker.checkStock(of: .pineApple)
        kiwiStockLabel.text = juiceMaker.checkStock(of: .kiwi)
        mangoStockLabel.text = juiceMaker.checkStock(of: .mango)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkInventory()
    }
    
}
