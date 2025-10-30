//
//  ForeignObject.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<foreignObject>` element.
///
/// The foreignObject element allows inclusion of foreign XML namespaces, typically XHTML.
public struct ForeignObject: SVGElementType {
  public static let tagName = "foreignObject"
  public static let isSelfClosing = false

  /// The x-coordinate of the foreign object.
  public let x: Double?

  /// The y-coordinate of the foreign object.
  public let y: Double?

  /// The width of the foreign object.
  public let width: Double?

  /// The height of the foreign object.
  public let height: Double?

  /// Creates a new foreignObject element.
  ///
  /// - Parameters:
  ///   - x: The x-coordinate.
  ///   - y: The y-coordinate.
  ///   - width: The width.
  ///   - height: The height.
  public init(x: Double? = nil, y: Double? = nil, width: Double? = nil, height: Double? = nil) {
    self.x = x
    self.y = y
    self.width = width
    self.height = height
  }
}
