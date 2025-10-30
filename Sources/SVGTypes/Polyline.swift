//
//  Polyline.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<polyline>` element.
///
/// The polyline element defines an open shape consisting of connected straight line segments.
public struct Polyline: SVGElementType {
  public static let tagName = "polyline"

  /// The list of points defining the polyline vertices.
  public let points: String?

  /// Creates a new polyline element.
  ///
  /// - Parameter points: A string of points in the format "x1,y1 x2,y2 x3,y3..."
  public init(points: String? = nil) {
    self.points = points
  }

  /// Creates a new polyline element from coordinate pairs.
  ///
  /// - Parameter coordinates: An array of (x, y) coordinate pairs.
  public init(coordinates: [(Double, Double)]) {
    func format(_ value: Double) -> String {
      value.truncatingRemainder(dividingBy: 1) == 0 ? String(Int(value)) : String(value)
    }
    self.points =
      coordinates
      .map { "\(format($0.0)),\(format($0.1))" }
      .joined(separator: " ")
  }
}
