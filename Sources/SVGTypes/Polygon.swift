//
//  Polygon.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<polygon>` element.
///
/// The polygon element defines a closed shape consisting of connected straight line segments.
public struct Polygon: SVGElementType {
    public static let tagName = "polygon"

    /// The list of points defining the polygon vertices.
    public let points: String?

    /// Creates a new polygon element.
    ///
    /// - Parameter points: A string of points in the format "x1,y1 x2,y2 x3,y3..."
    public init(points: String? = nil) {
        self.points = points
    }

    /// Creates a new polygon element from coordinate pairs.
    ///
    /// - Parameter coordinates: An array of (x, y) coordinate pairs.
    public init(coordinates: [(Double, Double)]) {
        func format(_ value: Double) -> String {
            value.truncatingRemainder(dividingBy: 1) == 0 ?
                String(Int(value)) :
                String(value)
        }
        self.points = coordinates
            .map { "\(format($0.0)),\(format($0.1))" }
            .joined(separator: " ")
    }
}