//
//  Path.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<path>` element.
///
/// The path element is used to define a path using SVG path data.
public struct Path: SVGElementType {
    public static let tagName = "path"

    /// The path data defining the shape.
    public let d: String?

    /// The fill rule for the path.
    public let fillRule: SVGFillRule?

    /// Creates a new path element.
    ///
    /// - Parameters:
    ///   - d: The path data string.
    ///   - fillRule: The fill rule to use.
    public init(d: String? = nil, fillRule: SVGFillRule? = nil) {
        self.d = d
        self.fillRule = fillRule
    }
}