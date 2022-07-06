import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var TextViewPassword: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func generatePassword(_ sender: UIButton) {
        
    }
}
