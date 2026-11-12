EcoLab iOS app project
======================

This project wraps your uploaded index.html in Apple's WKWebView and bundles
the HTML locally. The page's CSS and JavaScript are inline, so the core website
loads from the app bundle and does not need Netlify, Wi-Fi, or mobile data.

The supplied sw.js is included as a reference file. Native WKWebView does not
need a service worker for this bundled-file setup.

BUILD AN IPA (requires a Mac with Xcode)
----------------------------------------
1. Unzip this folder on a Mac.
2. Open EcoLab.xcodeproj in Xcode.
3. Select the EcoLab target, then choose Signing & Capabilities.
4. Select your Apple Developer team and set a unique Bundle Identifier
   (for example: com.yourname.ecolab).
5. Connect your iPhone or choose a device destination.
6. For a distributable IPA: Product > Archive, then Distribute App and follow
   the signing/distribution steps available for your Apple account.

IMPORTANT
---------
This is an Xcode source project, NOT a compiled or signed .ipa file.
An installable IPA must be built and signed with Apple's tools and an eligible
Apple signing identity. This environment cannot run Xcode or sign an iOS app.

APP NAME
--------
The app display name is EcoLab. You can change it in the target's General
settings in Xcode under Display Name.
