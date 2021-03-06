//
//  KWWebView.swift
//  iOStarter
//
//  Created by Crocodic Studio on 02/09/19.
//  Copyright © 2019 WahyuAdyP. All rights reserved.
//

import UIKit
import WebKit

class KWWebView: UIView {
    private var webView: WKWebView

    /// Returns a web view initialized with a specified frame and configuration.
    ///
    /// - Parameters:
    ///   - frame: The frame for the new web view.
    ///   - configuration: The configuration for the new web view.
    init(frame: CGRect, configuration: WKWebViewConfiguration) {
        webView = WKWebView(frame: frame, configuration: configuration)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        super.init(frame: frame)
        self.addSubview(webView)
    }

    /// Initializes and returns a newly allocated view object with the specified frame rectangle.
    ///
    /// - Parameter frame: The frame rectangle for the view, measured in points. The origin of the frame is relative to the superview in which you plan to add it. This method uses the frame rectangle to set the center and bounds properties accordingly.
    override init(frame: CGRect) {
        webView = WKWebView(frame: frame)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        super.init(frame: frame)
        self.addSubview(webView)
    }

    /// Returns an object initialized from data in a given unarchiver.Required.
    ///
    /// - Parameter aDecoder: An unarchiver object.
    required init?(coder aDecoder: NSCoder) {
        webView = WKWebView()
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        super.init(coder: aDecoder)
        self.addSubview(webView)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layoutIfNeeded()
        
        webView.frame = self.bounds
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        webView.frame = self.bounds
    }

    override func layoutIfNeeded() {
        super.layoutIfNeeded()

        webView.frame = self.bounds
    }
    
    /// A copy of the configuration to initialize the web view with.
    var configuration: WKWebViewConfiguration {
        return webView.configuration
    }
    
    /// The scroll view associated with the web view.
    var scrollView: UIScrollView {
        return webView.scrollView
    }
    
    /// The page title.
    var title: String? {
        return webView.title
    }
    
    /// The active URL.
    var url: URL? {
        return webView.url
    }
    
    /// The custom user agent string.
    var customUserAgent: String? {
        get {
            return webView.customUserAgent
        }
        set {
            webView.customUserAgent = newValue
        }
    }
    
    /// The web view's navigation delegate.
    var navigationDelegate: WKNavigationDelegate? {
        get {
            return webView.navigationDelegate
        }
        set {
            webView.navigationDelegate = newValue
        }
    }
    
    /// The web view's user interface delegate.
    var uiDelegate: WKUIDelegate? {
        get {
            return webView.uiDelegate
        }
        set {
            webView.uiDelegate = newValue
        }
    }
    
    /// An estimate of what fraction of the current navigation has been loaded.
    var estimatedProgress: Double {
        return webView.estimatedProgress
    }
    
    /// A Boolean value indicating whether all resources on the page have been loaded through securely encrypted connections.
    var hasOnlySecureContent: Bool {
        return webView.hasOnlySecureContent
    }
    
    /// Sets the webpage contents and base URL.
    ///
    /// - Parameters:
    ///   - string: The string to use as the contents of the webpage.
    ///   - baseURL: A URL used to resolve relative URLs within the document.
    /// - Returns: A new navigation.
    func loadHTMLString(_ string: String, baseURL: URL?) -> WKNavigation? {
        return webView.loadHTMLString(string, baseURL: baseURL)
    }
    
    /// A Boolean value indicating whether the view is currently loading content.
    var isLoading: Bool {
        return webView.isLoading
    }
    
    /// Reloads the current page.
    ///
    /// - Returns: A new navigation representing the reloaded web page.
    func reload() -> WKNavigation? {
        return webView.reload()
    }
    
    /// Reloads the current page, performing end-to-end revalidation using cache-validating conditionals if possible.
    ///
    /// - Returns: A new navigation representing the reloaded webpage.
    func reloadFromOrigin() -> WKNavigation? {
        return webView.reloadFromOrigin()
    }
    
    /// Stops loading all resources on the current page.
    func stopLoading() {
        webView.stopLoading()
    }
    
    /// Sets the webpage contents and base URL.
    ///
    /// - Parameters:
    ///   - data: The data to use as the contents of the webpage.
    ///   - MIMEType: The MIME type of the data.
    ///   - characterEncodingName: The data's character encoding name.
    ///   - baseURL: A URL used to resolve relative URLs within the document.
    /// - Returns: A new navigation.
    func load(_ data: Data, mimeType MIMEType: String, characterEncodingName: String, baseURL: URL) -> WKNavigation? {
        return webView.load(data, mimeType: MIMEType, characterEncodingName: characterEncodingName, baseURL: baseURL)
    }
    
    /// Navigates to the requested file URL on the filesystem
    ///
    /// - Parameters:
    ///   - URL: The file URL to navigate to.
    ///   - readAccessURL: The URL to allow read access to.
    /// - Returns: A new navigation for the given file URL.
    func loadFileURL(_ URL: URL, allowingReadAccessTo readAccessURL: URL) -> WKNavigation? {
        return webView.loadFileURL(URL, allowingReadAccessTo: readAccessURL)
    }
    
    /// A Boolean value indicating whether horizontal swipe gestures will trigger back-forward list navigations.
    var allowsBackForwardNavigationGestures: Bool {
        get {
            return webView.allowsBackForwardNavigationGestures
        }
        set {
            webView.allowsBackForwardNavigationGestures = newValue
        }
    }
    
    /// The web view's back-forward list.
    var backForwardList: WKBackForwardList {
        return webView.backForwardList
    }
    
    /// A Boolean value indicating whether there is a back item in the back-forward list that can be navigated to.
    var canGoBack: Bool {
        return webView.canGoBack
    }
    
    /// A Boolean value indicating whether there is a forward item in the back-forward list that can be navigated to.
    var canGoForward: Bool {
        return webView.canGoForward
    }
    
    /// A Boolean value that determines whether pressing on a link displays a preview of the destination for the link.
    var allowsLinkPreview: Bool {
        get {
            return webView.allowsLinkPreview
        } set {
            webView.allowsLinkPreview = newValue
        }
    }
    
    /// Navigates to the back item in the back-forward list.
    ///
    /// - Returns: A new navigation to the requested item, or nil if there is no back item in the back-forward list.
    func goBack() -> WKNavigation? {
        return webView.goBack()
    }
    
    /// Navigates to the forward item in the back-forward list.
    ///
    /// - Returns: A new navigation to the requested item, or nil if there is no forward item in the back-forward list.
    func goForward() -> WKNavigation? {
        return webView.goForward()
    }
    
    /// Navigates to an item from the back-forward list and sets it as the current item.
    ///
    /// - Parameter item: The item to navigate to. The item must be one of the items in the web view’s back-forward list.
    /// - Returns: A new navigation to the requested item, or nil if it is already the current item or is not part of the web view's back-forward list.
    func go(to item: WKBackForwardListItem) -> WKNavigation? {
        return webView.go(to: item)
    }
    
    /// Navigates to a requested URL.
    ///
    /// - Parameter request: The request specifying the URL to navigate to.
    /// - Returns: A new navigation for the given request.
    func load(_ request: URLRequest) -> WKNavigation? {
        return webView.load(request)
    }
    
    /// Evaluates a JavaScript string.
    ///
    /// - Parameters:
    ///   - javaScriptString: The JavaScript string to evaluate.
    ///   - completionHandler: A block to invoke when script evaluation completes or fails.
    func evaluateJavaScript(_ javaScriptString: String, completionHandler: ((Any?, Error?) -> Void)? = nil) {
        webView.evaluateJavaScript(javaScriptString, completionHandler: completionHandler)
    }
}

extension KWWebView {
    @available(iOS 10, *)
    /// A SecTrustRef object for the currently committed navigation.
    var serverTrust: SecTrust? {
        return webView.serverTrust
    }
    
    @available(iOS 11, *)
    /// Takes a snapshot of the view's visible viewport.
    func takeSnapshot(with snapshotConfiguration: WKSnapshotConfiguration?, completionHandler: @escaping (UIImage?, Error?) -> Void) {
        webView.takeSnapshot(with: snapshotConfiguration, completionHandler: completionHandler)
    }
}
