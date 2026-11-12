import SwiftUI
import WebKit

@main
struct EcoLabApp: App {
    var body: some Scene {
        WindowGroup {
            LocalWebsiteView()
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
        }
    }
}

struct LocalWebsiteView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.isOpaque = false
        webView.backgroundColor = .black
        webView.scrollView.contentInsetAdjustmentBehavior = .never

        if let pageURL = Bundle.main.url(forResource: "index", withExtension: "html") {
            webView.loadFileURL(
                pageURL,
                allowingReadAccessTo: pageURL.deletingLastPathComponent()
            )
        } else {
            webView.loadHTMLString(
                "<html><body style='background:#111;color:white;font-family:sans-serif;padding:24px'>Could not find the bundled website.</body></html>",
                baseURL: nil
            )
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
