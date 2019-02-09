import UIKit
class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     let date = Date()
        let calender=Calendar.current
        let hour = calender.component(.hour, from: date)
        let minute = calender.component(.minute, from: date)
        let second = calender.component(.second, from: date)
        print("\(hour):\(minute):\(second)")
        let month = calender.component(.month, from: date)
        let day = calender.component(.day, from: date)
        print("\(month):\(day)")
    }
 
   
}
