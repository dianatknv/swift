
import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet private weak var name     : UITextField!
    @IBOutlet private weak var date     : UIDatePicker!
    @IBOutlet private weak var works    : UITextField!
    @IBOutlet private weak var stright  : UISwitch!
    @IBOutlet weak var salaryLbl        : UILabel!
    
    //MARK: - Variables
    
    private var message                 : String!
    private var genderValue             : String!

    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension ViewController {
    
    //MARK: - Set ups
    
    private func alertMessage() {
        
        let _name        = name.text
        let _works       = works.text
        let _year        = date.calendar.component(Calendar.Component.year, from: Date())
        let _salaryValue = salaryLbl.text
        
        message = "Hi, I am \(_name ?? "No name")."
        message.append("As a \(_year)-year-old ")
        message.append("\(_works ?? "0000") earning ")
        message.append("$\(_salaryValue ?? "167")k/year, I am interested in \(genderValue ?? "Women"). Feel free to contact me! :)")
    }
}

extension ViewController {
    
    //MARK: - Actions
    
    @IBAction func salary(_ sender: UISlider) {
        
        let salary = Int(sender.value)
        salaryLbl.text = String(salary)
    }

    @IBAction func gender(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            genderValue = "Man"
        default:
            genderValue = "Women"
        }
    }
    
    @IBAction func save(_ sender: UIButton) {
    
        self.alertMessage()
        
        let alert = UIAlertController(title: "My personal info",
                                      message: self.message,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK",
                                      style: .default,
                                      handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

