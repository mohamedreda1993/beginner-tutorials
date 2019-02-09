import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        createAlert(title: "warning", message: "device is overheating")
    }
    func createAlert (title:String,message:String)
    {
        let alert=UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        // creating on button
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion:nil)

    }


}
