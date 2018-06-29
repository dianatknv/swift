import UIKit

protocol AddTask {
    func addTask(name: String)
}

protocol setDateValueDelegate {
    func setDate(toValue: String)
}

class AddTaskController: UIViewController {
    
    @IBAction func addAction(_ sender: Any) {
        if nameTextField.text != "" {
            delegate?.addTask(name: nameTextField.text!)
            navigationController?.popViewController(animated: true)
        }
        
    }

    
    @IBOutlet weak var nameTextField: UITextField!
    
    var delegate: AddTask?
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
    }
}
