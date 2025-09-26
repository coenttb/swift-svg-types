//
//  Line.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<line>` element.
///
/// The line element draws a straight line between two points.
public struct Line: SVGElementType {
    public static let tagName = "line"

    /// The x-coordinate of the start point.
    public let x1: Double?

    /// The y-coordinate of the start point.
    public let y1: Double?

    /// The x-coordinate of the end point.
    public let x2: Double?

    /// The y-coordinate of the end point.
    public let y2: Double?

    /// Creates a new line element.
    ///
    /// - Parameters:
    ///   - x1: The x-coordinate of the start point.
    ///   - y1: The y-coordinate of the start point.
    ///   - x2: The x-coordinate of the end point.
    ///   - y2: The y-coordinate of the end point.
    public init(x1: Double? = nil, y1: Double? = nil, x2: Double? = nil, y2: Double? = nil) {
        self.x1 = x1
        self.y1 = y1
        self.x2 = x2
        self.y2 = y2
    }
}