import UIKit
import AVFoundation
class ViewController: UIViewController {
var seconds=30
    var timer=Timer()
    var player=AVAudioPlayer()
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var startoutlet: UIButton!
    @IBOutlet weak var stopoutlet: UIButton!
    @IBOutlet weak var slideroutlet: UISlider!
    @IBAction func slider(_ sender: UISlider) {
        seconds=Int(sender.value)
        label.text=String(seconds) + "seconds"
    }
    @IBAction func startb(_ sender: Any) {
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
        slideroutlet.isHidden=true
        startoutlet.isHidden=true
    }
    @objc func counter(){
        seconds -= 1
        label.text=String(seconds) + "seconds"
        if seconds == 0{
            timer.invalidate()
            player.play()
        }
    }
    
    @IBAction func stopb(_ sender: Any) {
        timer.invalidate()
        seconds=30
        slideroutlet.setValue(30, animated: true)
        label.text="30 seconds"
        player.stop()
        slideroutlet.isHidden=false
        startoutlet.isHidden=false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do{
            let audiopath=Bundle.main.path(forResource: "song", ofType: "mp3")
            try player=AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!) as URL)
        }catch{
            
    }
    }
 
}
