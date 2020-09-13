import SwiftUI

struct B05a_LandmarkList: View {
    var body: some View {
        List(landmarkData, id: \.id) { landmark in
            EmptyView()
        }
    }
}

struct B05a_LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        B05a_LandmarkList()
    }
}
