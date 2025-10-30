//
//  SVGElement.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

import Foundation

/// Represents an SVG `<svg>` root element.
///
/// The svg element is the root container for SVG graphics.
public struct SVGElement: SVGElementType {
  public static let tagName = "svg"

  /// The position and dimensions of the viewport.
  public let viewBox: SVGViewBox?

  /// The width of the viewport.
  public let width: SVGLength?

  /// The height of the viewport.
  public let height: SVGLength?

  /// How to preserve aspect ratio.
  public let preserveAspectRatio: String?

  /// The XML namespace (typically set automatically).
  public let xmlns: String?

  /// Creates a new SVG root element.
  ///
  /// - Parameters:
  ///   - viewBox: The viewport dimensions.
  ///   - width: The width of the SVG.
  ///   - height: The height of the SVG.
  ///   - preserveAspectRatio: How to preserve aspect ratio.
  ///   - xmlns: The XML namespace.
  public init(
    viewBox: SVGViewBox? = nil,
    width: SVGLength? = nil,
    height: SVGLength? = nil,
    preserveAspectRatio: String? = nil,
    xmlns: String? = "http://www.w3.org/2000/svg"
  ) {
    self.viewBox = viewBox
    self.width = width
    self.height = height
    self.preserveAspectRatio = preserveAspectRatio
    self.xmlns = xmlns
  }
}
