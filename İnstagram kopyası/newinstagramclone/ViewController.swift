
import UIKit
import Firebase
class ViewController: UIViewController {
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            super.traitCollectionDidChange(previousTraitCollection)
            
            // Kullanıcının tercihine göre koyu veya normal modu uygulayabilirsiniz.
            if self.traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
                applyTheme()
            }
        }

        func applyTheme() {
            if self.traitCollection.userInterfaceStyle == .dark {
                // Koyu mod için renkler, görünümler ve diğer ayarlar burada uygulanır.
                view.backgroundColor = .black
                emailText.textColor = .white
                passwordText.textColor = .white
            } else {
                // Normal mod için renkler, görünümler ve diğer ayarlar burada uygulanır.
                view.backgroundColor = .white
                emailText.textColor = .black
                passwordText.textColor = .black
            }
        }
    
    
    
    
    @IBAction func signUpClicked(_ sender: Any) {
       /* if emailText.text != "" && passwordText.text != "" {
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (authdata, error) in
                if error != nil{
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }
                else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                
                
            }
        }
            else {
                
                makeAlert(titleInput: "Error", messageInput:"Username? / Password?")
                
            }
            
        
*/
        self.performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    @IBAction func signInClicked(_ sender: Any) {
        /*
        if emailText.text != "" && passwordText.text != "" {
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { (authdata, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }
                else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                }
                
            }
            else {
                makeAlert(titleInput: "Error", messageInput: "Username? / Password?")
                
            }
  
        
        
   */
        self.performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
   
}

