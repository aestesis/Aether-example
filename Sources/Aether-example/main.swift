import Foundation
import Aether

Debug.warning(Application.name)
Debug.warning(Application.version)
Debug.warning(Application.build)

let window = OsWindow(title:"Aether Example",width:400,height:300)
if let window = window {
    window.onStartUI.once { viewport in
        //let home = Home(viewport:viewport)
        //viewport.rootView = home
    }
    window.renderLoop()
}
