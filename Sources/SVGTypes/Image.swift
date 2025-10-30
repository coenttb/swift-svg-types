//
//  Image.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<image>` element.
///
/// The image element includes external raster images inside SVG documents.
public struct Image: SVGElementType {
  public static let tagName = "image"

  /// The x-coordinate of the image.
  public let x: Double?

  /// The y-coordinate of the image.
  public let y: Double?

  /// The width of the image.
  public let width: Double?

  /// The height of the image.
  public let height: Double?

  /// The URL of the image resource.
  public let href: String?

  /// How to preserve the aspect ratio.
  public let preserveAspectRatio: String?

  /// Creates a new image element.
  ///
  /// - Parameters:
  ///   - x: The x-coordinate.
  ///   - y: The y-coordinate.
  ///   - width: The width.
  ///   - height: The height.
  ///   - href: The URL of the image.
  ///   - preserveAspectRatio: How to preserve aspect ratio.
  public init(
    x: Double? = nil,
    y: Double? = nil,
    width: Double? = nil,
    height: Double? = nil,
    href: String? = nil,
    preserveAspectRatio: String? = nil
  ) {
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.href = href
    self.preserveAspectRatio = preserveAspectRatio
  }
}
