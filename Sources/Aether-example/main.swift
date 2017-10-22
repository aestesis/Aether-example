import Foundation
import Aether

Application.name = "Aether-example"
Debug.codeRoot = "Aether-example"

func scanAssets() {
    let fm = FileManager.default
    var path:String? = fm.currentDirectoryPath 
    while path != nil {
        NSLog("**** scan \(path)")
        do {
            let files = try fm.contentsOfDirectory(atPath: path!)
            for f in files {
                NSLog("\(f)")
            }
        } catch _ {
        }
        path = path?.parentPath 
    }
}

scanAssets()
/*
let window = OsWindow(title:"Aether Example",width:400,height:300)
if let window = window {
    window.onStartUI.once { viewport in
        let home = Home(viewport:viewport)
        viewport.rootView = home
    }
    window.renderLoop()
}
*/