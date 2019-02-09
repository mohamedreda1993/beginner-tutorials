

import UIKit
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
var list=["going to market","buy fruit","buy vegtable","buy chepsi"]
    @IBOutlet weak var mytableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text=list[indexPath.row]
        return cell
    }
    // how to delete cell
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            list.remove(at: indexPath.row)
            mytableview.reloadData()
        }
    }
   
}
