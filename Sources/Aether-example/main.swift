import Foundation
import Aether


Application.initialize(name:"Aether-example",codeRoot:"Aether-example",assets:["assets.aether.zip"])

if let f = Application.readFile("text.txt") {
    NSLog("available: \(f.available)")
    if let data = f.read(f.available) {
        NSLog("data: \(data.count)")
        let s = Misc.string(from:data)
        NSLog(s)
    } else {
        NSLog("no data")
    }
} else {
    NSLog("no file")
}


let window = OsWindow(title:"Aether Example",width:400,height:300)
if let window = window {
    window.onStartUI.once { viewport in
        let home = Home(viewport:viewport)
        viewport.rootView = home
    }
    window.renderLoop()
}
