import Cocoa

class AMDVC: NSViewController {
    @IBOutlet weak var amdChipsetList: NSPopUpButton!
    
    var moboFamily = ["15/16h", "17h"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amdChipsetList.removeAllItems()
        amdChipsetList.addItems(withTitles: moboFamily)
        
    }
}
