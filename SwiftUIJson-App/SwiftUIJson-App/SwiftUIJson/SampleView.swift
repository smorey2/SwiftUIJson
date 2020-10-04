import SwiftUI

//struct SampleView: View {
//    var body: some View {
//        VStack {
//            Text("Turtle Rock")
//                .font(.title)
//            Text("Joshua Tree National Park")
//        }
//    }
//}

struct SampleView: View {
    let ctFont = CTFontCreateUIFontForLanguage(.system, 12, nil)!
    var body: some View {
//        VStack {
//            Text("largeTitle").font(.largeTitle)
//            Text("title").font(.title)
//            Text("title2").font(.title2)
//            Text("title3").font(.title3)
//            Text("headline").font(.headline)
//            Text("subheadline").font(.subheadline)
//            Text("body").font(.body)
//            Text("callout").font(.callout)
//            Text("footnote").font(.footnote)
//            Text("caption").font(.caption)
//        }
        VStack {
            Text("caption2").font(.caption2)
//            Text("system:size:weight:design").font(.system(size: 17, weight: .bold, design: .serif))
//            Text("custom:_:size").font(.custom("Georgia", size: 24))
//            Text("custom:_:size:relativeTo").font(.custom("Georgia", size: 24, relativeTo: .headline))
//            Text("custom:_:fixedSize").font(.custom("Georgia", fixedSize: 24))
            Text("init").font(Font(ctFont))
        }
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            SampleView()
        }
    }
}
