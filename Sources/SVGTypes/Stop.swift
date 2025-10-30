//
//  Stop.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<stop>` element.
///
/// The stop element defines a color and its position to use on a gradient.
public struct Stop: SVGElementType {
  public static let tagName = "stop"

  /// The offset position of the stop (0% to 100% or 0 to 1).
  public let offset: String?

  /// The color of the stop.
  public let stopColor: String?

  /// The opacity of the stop.
  public let stopOpacity: Double?

  /// Creates a new stop element.
  ///
  /// - Parameters:
  ///   - offset: The offset position (percentage or decimal).
  ///   - stopColor: The color at this stop.
  ///   - stopOpacity: The opacity at this stop.
  public init(offset: String? = nil, stopColor: String? = nil, stopOpacity: Double? = nil) {
    self.offset = offset
    self.stopColor = stopColor
    self.stopOpacity = stopOpacity
  }
}
