import Foundation
import Aether

Application.name = "Aether-example"
Debug.codeRoot = "Aether-example"

Debug.warning("\(Font.availableFonts)")
let window = OsWindow(title:"Aether Example",width:400,height:300)
if let window = window {
    window.onStartUI.once { viewport in
        let home = Home(viewport:viewport)
        viewport.rootView = home
    }
    window.renderLoop()
}
