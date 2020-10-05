import SwiftUI
import SwiftUIJson

struct Z01a_Font: View {
    let ctFont = CTFontCreateUIFontForLanguage(.system, 12, nil)!
    var body: some View {
        VStack {
            VStack {
                Text("largeTitle").font(.largeTitle)
                Text("title").font(.title)
                Text("title2").font(.title2)
                Text("title3").font(.title3)
                Text("headline").font(.headline)
                Text("subheadline").font(.subheadline)
                Text("body").font(.body)
                Text("callout").font(.callout)
                Text("footnote").font(.footnote)
                Text("caption").font(.caption)
            }
            VStack {
                Text("caption2").font(.caption2)
                Text("system:design").font(.system(.title, design: .serif))
                Text("system:size:weight:design").font(.system(size: 17, weight: .regular, design: .default))
                Text("custom:size").font(.custom("Georgia", size: 24))
                Text("custom:size:relativeTo").font(.custom("Georgia", size: 24, relativeTo: .headline))
                Text("custom:fixedSize").font(.custom("Georgia", fixedSize: 24))
                Text("init").font(Font(ctFont))
            }
            VStack {
                Text("italic").font(Font.title.italic())
                Text("smallCaps").font(Font.title.smallCaps())
                Text("lowercaseSmallCaps").font(Font.title.lowercaseSmallCaps())
                Text("uppercaseSmallCaps").font(Font.title.uppercaseSmallCaps())
                Text("monospacedDigit").font(Font.title.monospacedDigit())
                Text("weight").font(Font.title.weight(.regular))
                Text("bold").font(Font.title.bold())
                Text("leading").font(Font.title.leading(.standard))
                Text("combined").font(Font.title.weight(.heavy).italic().leading(.standard))
            }
        }
    }
}

struct Z01a_Font_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Font()
        }
    }
}
