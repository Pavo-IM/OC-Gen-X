import Cocoa

class AMDVC: NSViewController {
    
    var moboFamily = ["15/16h", "17h"]

    @IBOutlet weak var amdChipsetList: NSPopUpButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amdChipsetList.removeAllItems()
        amdChipsetList.addItems(withTitles: moboFamily)
        
    }
    @IBAction func beginningClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToMainVC()
        }
    }
    
}
