
import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var outbut: UILabel!
    @IBAction func button(_ sender: Any) {
        outbut.text=input.text
        UserDefaults.standard.set(input.text, forKey: "myname")
        input.text=""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "myname") as? String{
            outbut.text=x
        }
    }
