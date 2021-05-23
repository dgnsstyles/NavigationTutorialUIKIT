import UIKit

class SecondViewController: UIViewController {
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Volver", style: .plain, target: self, action: #selector(dismissSelector))
        view.addSubview(button)
        button.setTitle("Otro viewController", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 52)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        view.backgroundColor = .red
        title = "Bienvenidos"
    }
    
    @objc private func didTapButton(){
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func dismissSelector(){
        dismiss(animated: true, completion: nil)
    }
    
}
