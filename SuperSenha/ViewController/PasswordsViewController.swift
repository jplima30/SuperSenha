import UIKit

class PasswordsViewController: UIViewController {
    
    @IBOutlet weak var TextViewPassword: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(useNumberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatePassword()
    }
    
    func generatePassword(){
        TextViewPassword.scrollRangeToVisible(NSRange(location: 0, length: 0))
        TextViewPassword.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            TextViewPassword.text?.append(password + "\n\n")
        }
    }
    
    @IBAction func generatePassword(_ sender: UIButton) {
        generatePassword()
    }
}
