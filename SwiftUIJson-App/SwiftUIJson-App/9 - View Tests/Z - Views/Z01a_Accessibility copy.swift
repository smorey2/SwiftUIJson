import SwiftUI
import SwiftUIJson

struct Z01a_Accessibility: View {
    var body: some View {
        VStack {
            Text("activationPoint").accessibility(activationPoint: CGPoint(x: 0, y: 0))
            Text("activationPoint").accessibility(activationPoint: UnitPoint(x: 0, y: 0))
        }
    }
}

struct Z01a_Accessibility_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Accessibility()
        }
    }
}
