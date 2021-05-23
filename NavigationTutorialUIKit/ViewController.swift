//
//  ViewController.swift
//  NavigationTutorialUIKit
//
//  Created by usuario on 23-05-21.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.addSubview(button)
        view.backgroundColor = .systemBlue
        // Do any additional setup after loading the view.
        button.setTitle("Ir al NavController", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
       
        
        
    }
    @objc private func didTapButton(){
        let rootVC = SecondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }
    
   


}

