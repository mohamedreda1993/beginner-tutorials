// first open new project then open storyboard
// second import webview object from component
// thidd open view controller and drag web view in code 
// forth write the code

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://www.google.com")
        webview.loadRequest(URLRequest(url: url!))
    }


}
