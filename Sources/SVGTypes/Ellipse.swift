//
//  Ellipse.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<ellipse>` element.
///
/// The ellipse element defines an ellipse based on a center point and two radii.
public struct Ellipse: SVGElementType {
  public static let tagName = "ellipse"

  /// The x-coordinate of the center of the ellipse.
  public let cx: Double?

  /// The y-coordinate of the center of the ellipse.
  public let cy: Double?

  /// The radius of the ellipse along the x-axis.
  public let rx: Double?

  /// The radius of the ellipse along the y-axis.
  public let ry: Double?

  /// Creates a new ellipse element.
  ///
  /// - Parameters:
  ///   - cx: The x-coordinate of the center.
  ///   - cy: The y-coordinate of the center.
  ///   - rx: The radius along the x-axis.
  ///   - ry: The radius along the y-axis.
  public init(cx: Double? = nil, cy: Double? = nil, rx: Double? = nil, ry: Double? = nil) {
    self.cx = cx
    self.cy = cy
    self.rx = rx
    self.ry = ry
  }
}
