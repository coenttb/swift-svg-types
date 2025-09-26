//
//  Circle.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<circle>` element.
///
/// The circle element is used to draw circles based on a center point and a radius.
public struct Circle: SVGElementType {
    public static let tagName = "circle"

    /// The x-coordinate of the center of the circle.
    public let cx: Double?

    /// The y-coordinate of the center of the circle.
    public let cy: Double?

    /// The radius of the circle.
    public let r: Double?

    /// Creates a new circle element.
    ///
    /// - Parameters:
    ///   - cx: The x-coordinate of the center.
    ///   - cy: The y-coordinate of the center.
    ///   - r: The radius of the circle.
    public init(cx: Double? = nil, cy: Double? = nil, r: Double? = nil) {
        self.cx = cx
        self.cy = cy
        self.r = r
    }
}