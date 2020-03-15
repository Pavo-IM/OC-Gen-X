import Cocoa

class IntelVC: NSViewController {
    @IBOutlet weak var intelChipsetList: NSPopUpButton!
    
    var moboChipsetList = ["Z97", "Z170", "Z270"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        intelChipsetList.removeAllItems()
        intelChipsetList.addItems(withTitles: moboChipsetList)
    }
    @IBAction func beginningClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToMainVC()
        }
    }
    
}
