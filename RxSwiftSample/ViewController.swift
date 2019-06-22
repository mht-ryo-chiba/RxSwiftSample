//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by 千葉　諒 on 2019/06/22.
//  Copyright © 2019 chiba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let enableBtnColor: UIColor = UIColor(red: 96/255, green: 163/255, blue: 255/255, alpha: 1.0)
    let disenableBtnColor: UIColor = UIColor(red: 173/255, green: 173/255, blue: 173/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initView()
    }
    
    private func initView() {
        // 初期表示は非活性
        loginButton.isEnabled = false
        // ボタンのタイトル色
        loginButton.setTitleColor(disenableBtnColor,for: UIControl.State.disabled) // タイトルの色
        // ボタンのボーダー色
        loginButton.layer.borderColor = disenableBtnColor.cgColor
        // どのくらい角を丸くするか
        loginButton.layer.cornerRadius = 4.0
        // ボーダーのの線の太さ
        loginButton.layer.borderWidth = 2.0
    }

    @IBAction func moveNextView(_ sender: Any) {
        // RxSwiftViewControllerに繊維
        let storyboard: UIStoryboard = UIStoryboard(name: "RxSwift", bundle: nil)
        let viewController: UIViewController = storyboard.instantiateViewController(withIdentifier: "RxSwift")
        viewController.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        self.present(viewController, animated: true, completion: nil)
    }
    
}

