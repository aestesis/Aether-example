import Foundation
import Aether


Application.initialize(name:"Aether-example",codeRoot:"Aether-example",assets:["assets.aether.zip"])

let window = OsWindow(title:"Aether Example",width:400,height:300)
if let window = window {
    window.onStartUI.once { viewport in
        let home = Home(viewport:viewport)
        viewport.rootView = home
    }
    window.renderLoop()
}
