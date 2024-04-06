
import UIKit
import FirebaseCore
import GoogleSignIn

class LoginVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.05, green: 0.12, blue: 0.25, alpha: 1.00) // TODO: Change to variable
    }
    @IBAction func ssoGoogleButton(_ sender: UIButton) {
        guard let clientId = FirebaseApp.app()?.options.clientID else {
            return
        }

        let config = GIDConfiguration(clientID: clientId)
        GIDSignIn.sharedInstance.configuration = config
        GIDSignIn.sharedInstance.signIn(withPresenting: self)  { [weak self] result, error in
            guard
                let authentication = result?.user,
                let idToken = authentication.idToken?.tokenString
            else {
                return
            }
            let email = authentication.fetcherAuthorizer.userEmail
            
            print(idToken, authentication.accessToken.tokenString, email)
        }
    }
}
