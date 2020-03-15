import Cocoa

class MainVC: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func intelClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToIntelVC()
        }
    }
    
    @IBAction func amdClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToAmdVC()
        }
    }
    
}
