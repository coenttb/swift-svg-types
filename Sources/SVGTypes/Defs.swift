//
//  Defs.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<defs>` element.
///
/// The defs element is used to store graphical objects that will be used at a later time.
/// Objects created inside a defs element are not rendered directly.
public struct Defs: SVGElementType {
    public static let tagName = "defs"
    public static let isSelfClosing = false

    /// Creates a new defs element.
    public init() {}
}