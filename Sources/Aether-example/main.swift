import Foundation
import Aether


Application.initialize(name:"Aether-example",codeRoot:"Aether-example",assets:["assets.aether.zip"])

Application.getText("LICENSE") { r in
    Debug.warning("yo!!!")
    if let s = r as? String {
        Debug.warning(s)
    }
}



if let f = Application.readFile("LICENSE") {
    NSLog("available: \(f.available)")
    if let data = f.read(f.available) {
        NSLog("data: \(data.count)")
    } else {
        NSLog("no data")
    }
} else {
    NSLog("no file")
}

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