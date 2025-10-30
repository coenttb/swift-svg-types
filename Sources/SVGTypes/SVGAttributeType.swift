//
//  SVGAttributeType.swift
//  swift-svg
//
//  Created by Coen ten Thije Boonkkamp
//

/// Enumeration of SVG 1.1 attribute types as per W3C specification.
///
/// This enum provides a type-safe representation of SVG attribute names,
/// ensuring only valid SVG attributes can be used in the domain model.
public enum SVGAttributeType: String, Sendable, CaseIterable {
  // Positioning attributes
  case x
  case y
  case width
  case height
  case cx
  case cy
  case r
  case rx
  case ry

  // Path attributes
  case d
  case points

  // Presentation attributes
  case fill
  case stroke
  case strokeWidth = "stroke-width"
  case strokeLinecap = "stroke-linecap"
  case strokeLinejoin = "stroke-linejoin"
  case strokeDasharray = "stroke-dasharray"
  case strokeDashoffset = "stroke-dashoffset"
  case fillOpacity = "fill-opacity"
  case strokeOpacity = "stroke-opacity"
  case opacity

  // Transform attributes
  case transform

  // Text attributes
  case fontSize = "font-size"
  case fontFamily = "font-family"
  case fontWeight = "font-weight"
  case textAnchor = "text-anchor"
  case dominantBaseline = "dominant-baseline"
  case alignmentBaseline = "alignment-baseline"

  // Viewport attributes
  case viewBox
  case preserveAspectRatio

  // Reference attributes
  case id
  case `class`
  case style
  case href
  case xlinkHref = "xlink:href"

  // Filter attributes
  case filter
  case mask
  case clipPath = "clip-path"

  // Gradient attributes
  case gradientUnits
  case gradientTransform
  case spreadMethod
  case x1
  case y1
  case x2
  case y2
  case offset
  case stopColor = "stop-color"
  case stopOpacity = "stop-opacity"

  // Other attributes
  case display
  case visibility
  case overflow
  case clipRule = "clip-rule"
  case fillRule = "fill-rule"
  case markerStart = "marker-start"
  case markerMid = "marker-mid"
  case markerEnd = "marker-end"
}
