import Cocoa

class MainWindowController: NSWindowController {
    
    var mainVC: MainVC?
    var intelVC: IntelVC?
    var amdVC: AMDVC?
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        mainVC = contentViewController as? MainVC
        intelVC = contentViewController as? IntelVC
        amdVC = contentViewController as? AMDVC
    }
    
    func moveToMainVC() {
        if mainVC == nil {
            mainVC = storyboard?.instantiateController(withIdentifier: "mainVC") as? MainVC
        }
        window?.contentView = mainVC?.view
    }
    
    func moveToIntelVC() {
        if intelVC == nil {
            intelVC = storyboard?.instantiateController(withIdentifier: "intelVC") as? IntelVC
        }
        window?.contentView = intelVC?.view
    }
    
    func moveToAmdVC() {
        if amdVC == nil {
            amdVC = storyboard?.instantiateController(withIdentifier: "amdVC") as? AMDVC
        }
        window?.contentView = amdVC?.view
    }
}
