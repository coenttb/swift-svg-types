//
//  Text.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents an SVG `<text>` element.
///
/// The text element defines a graphics element consisting of text.
public struct Text: SVGElementType {
  public static let tagName = "text"
  public static let isSelfClosing = false

  /// The x-coordinate of the starting point of the text baseline.
  public let x: Double?

  /// The y-coordinate of the starting point of the text baseline.
  public let y: Double?

  /// The horizontal shift from a previous text element.
  public let dx: Double?

  /// The vertical shift from a previous text element.
  public let dy: Double?

  /// The rotation of individual characters.
  public let rotate: String?

  /// The length that the text should be adjusted to fit.
  public let textLength: Double?

  /// How the text should be stretched or compressed to fit textLength.
  public let lengthAdjust: TextLengthAdjust?

  /// The text content.
  public let content: String?

  /// Specifies how text should be stretched or compressed.
  public enum TextLengthAdjust: String, Sendable {
    case spacing
    case spacingAndGlyphs
  }

  /// Creates a new text element.
  ///
  /// - Parameters:
  ///   - x: The x-coordinate of the text.
  ///   - y: The y-coordinate of the text.
  ///   - dx: The horizontal shift.
  ///   - dy: The vertical shift.
  ///   - rotate: The rotation of characters.
  ///   - textLength: The desired text length.
  ///   - lengthAdjust: How to adjust the text length.
  ///   - content: The text content.
  public init(
    x: Double? = nil,
    y: Double? = nil,
    dx: Double? = nil,
    dy: Double? = nil,
    rotate: String? = nil,
    textLength: Double? = nil,
    lengthAdjust: TextLengthAdjust? = nil,
    content: String? = nil
  ) {
    self.x = x
    self.y = y
    self.dx = dx
    self.dy = dy
    self.rotate = rotate
    self.textLength = textLength
    self.lengthAdjust = lengthAdjust
    self.content = content
  }
}
