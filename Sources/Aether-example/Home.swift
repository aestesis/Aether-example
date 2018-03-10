import Aether

class Home:View {
    public override init(viewport:Viewport) {
        super.init(viewport:viewport)
        self.background = .white    // 4debug
    }
    override func draw(to g:Graphics) {
        g.fill(rect:self.bounds,color:.aeOrange)
    }
}