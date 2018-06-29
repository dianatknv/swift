import UIKit

protocol CheckBox {
    func checkBox(state: Bool, index: Int?)
}

class TaskCell: UITableViewCell {
    
    @IBAction func checkBoxAction(_ sender: Any) {
        if tasks![indexP!].checked {
            delegate?.checkBox(state: false, index: indexP)
        } else {
            delegate?.checkBox(state: true, index: indexP)
        }
    }
    
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    
    
    var indexP: Int?
    var delegate: CheckBox?
    var tasks: [Tasks]?
}
