import Cocoa

class AMDVC: NSViewController {
    @IBOutlet weak var amdChipsetList: NSPopUpButton!
    
    var moboFamily = ["15/16h", "17h"]
    var selection: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amdChipsetList.removeAllItems()
        amdChipsetList.addItems(withTitles: moboFamily)
        
        selection = amdChipsetList.titleOfSelectedItem
    }
    
    @IBAction func previousClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToMainVC()
        }
    }
    @IBAction func nextClicked(_ sender: Any) {
        if let mainWC = view.window?.windowController as? MainWindowController {
            mainWC.moveToKextVC()
        }
    }
}
