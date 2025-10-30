//
//  Rect.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<rect>` element.
///
/// The rect element is used to draw rectangles and squares.
public struct Rect: SVGElementType {
  public static let tagName = "rect"

  /// The x-coordinate of the rectangle.
  public let x: Double?

  /// The y-coordinate of the rectangle.
  public let y: Double?

  /// The width of the rectangle.
  public let width: Double?

  /// The height of the rectangle.
  public let height: Double?

  /// The horizontal corner radius.
  public let rx: Double?

  /// The vertical corner radius.
  public let ry: Double?

  /// Creates a new rectangle element.
  ///
  /// - Parameters:
  ///   - x: The x-coordinate.
  ///   - y: The y-coordinate.
  ///   - width: The width.
  ///   - height: The height.
  ///   - rx: The horizontal corner radius.
  ///   - ry: The vertical corner radius.
  public init(
    x: Double? = nil,
    y: Double? = nil,
    width: Double? = nil,
    height: Double? = nil,
    rx: Double? = nil,
    ry: Double? = nil
  ) {
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.rx = rx
    self.ry = ry
  }
}
