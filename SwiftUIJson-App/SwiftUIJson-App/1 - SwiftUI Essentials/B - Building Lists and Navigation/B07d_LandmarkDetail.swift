import SwiftUI

struct B07d_LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            B07b_MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            B07a_CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct B07d_LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        B07d_LandmarkDetail(landmark: landmarkData[0])
    }
}
