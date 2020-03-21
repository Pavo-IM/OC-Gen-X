import Cocoa

class IntelVC: NSViewController {
    @IBOutlet weak var intelChipsetList: NSPopUpButton!
    
    var moboChipsetList = ["Haswell", "Ivy Bridge", "Skylake", "Kaby Lake", "Coffee Lake", "Haswell-E", "Broadwell-E", "Skylake-X"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        intelChipsetList.removeAllItems()
        intelChipsetList.addItems(withTitles: moboChipsetList)
        
        
    }
    
    @IBAction func previousClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToMainVC()
        }
    }
    @IBAction func nextClicked(_ sender: Any) {
    }
    
}
