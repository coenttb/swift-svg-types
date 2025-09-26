//
//  Use.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<use>` element.
///
/// The use element references another element and duplicates it at a different location.
public struct Use: SVGElementType {
    public static let tagName = "use"

    /// The reference to the element to be reused.
    public let href: String?

    /// The x-coordinate for the referenced element.
    public let x: Double?

    /// The y-coordinate for the referenced element.
    public let y: Double?

    /// The width of the use element.
    public let width: Double?

    /// The height of the use element.
    public let height: Double?

    /// Creates a new use element.
    ///
    /// - Parameters:
    ///   - href: The reference to the element (typically an ID with # prefix).
    ///   - x: The x-coordinate.
    ///   - y: The y-coordinate.
    ///   - width: The width.
    ///   - height: The height.
    public init(
        href: String? = nil,
        x: Double? = nil,
        y: Double? = nil,
        width: Double? = nil,
        height: Double? = nil
    ) {
        self.href = href
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
}