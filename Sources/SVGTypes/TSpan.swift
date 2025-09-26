//
//  TSpan.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<tspan>` element.
///
/// The tspan element is used within a text element to position or style a subset of text.
public struct TSpan: SVGElementType {
    public static let tagName = "tspan"
    public static let isSelfClosing = false

    /// The x-coordinate for the tspan.
    public let x: Double?

    /// The y-coordinate for the tspan.
    public let y: Double?

    /// The horizontal shift from the previous text element.
    public let dx: Double?

    /// The vertical shift from the previous text element.
    public let dy: Double?

    /// The rotation of individual characters.
    public let rotate: String?

    /// The length that the text should be adjusted to fit.
    public let textLength: Double?

    /// The text content.
    public let content: String?

    /// Creates a new tspan element.
    ///
    /// - Parameters:
    ///   - x: The x-coordinate.
    ///   - y: The y-coordinate.
    ///   - dx: The horizontal shift.
    ///   - dy: The vertical shift.
    ///   - rotate: The rotation of characters.
    ///   - textLength: The desired text length.
    ///   - content: The text content.
    public init(
        x: Double? = nil,
        y: Double? = nil,
        dx: Double? = nil,
        dy: Double? = nil,
        rotate: String? = nil,
        textLength: Double? = nil,
        content: String? = nil
    ) {
        self.x = x
        self.y = y
        self.dx = dx
        self.dy = dy
        self.rotate = rotate
        self.textLength = textLength
        self.content = content
    }
}