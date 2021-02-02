//
//  HyperlinkTextField.swift
//  OC Gen-X
//
//  Created by Stephen Heaps on 2020-06-27.
//  Copyright © 2020 Henry Brock. All rights reserved.
//

import AppKit

/// Subclass of NSTextField used to display hyperlinks. From https://stackoverflow.com/a/34093140 with minor additionalAttributes update.
class HyperlinkTextField: NSTextField {
    
    /// Set content to be a hyperlink
    ///
    /// Based on code at <https://developer.apple.com/library/mac/qa/qa1487/_index.html>
    ///
    /// - parameters:
    ///    - title: text displayed in field
    ///    - URL: destination of hyperlink
    func setHyperlinkWithTitle(title: String, URL: NSURL, additionalAttributes: [NSAttributedString.Key: Any]?) {
        allowsEditingTextAttributes = true
        isSelectable = true
        
        let attributedString = NSMutableAttributedString(string: title, attributes: additionalAttributes ?? [:])
        attributedString.addAttribute(.link, value: URL, range: NSRange(location: 0, length: attributedString.length))
        
        attributedStringValue = attributedString
    }

    /// Always display a pointing-hand cursor
    override func resetCursorRects() {
        addCursorRect(bounds, cursor: NSCursor.pointingHand)
    }
}
