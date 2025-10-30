//
//  SVGLengthUnit.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Represents units for length values in SVG.
public enum SVGLengthUnit: String, Sendable {
  /// Pixels (user units).
  case px

  /// Percentage.
  case percent = "%"

  /// Em units (relative to font size).
  case em

  /// Ex units (relative to x-height).
  case ex

  /// Points (1/72 of an inch).
  case pt

  /// Picas (12 points).
  case pc

  /// Millimeters.
  case mm

  /// Centimeters.
  case cm

  /// Inches.
  case `in`
}
