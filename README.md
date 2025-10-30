# swift-svg-types

[![Swift](https://img.shields.io/badge/Swift-6.0-orange.svg)](https://swift.org)
[![Platforms](https://img.shields.io/badge/Platforms-macOS%2014%2B%20|%20iOS%2017%2B-lightgray.svg)]()
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![CI](https://github.com/coenttb/swift-svg-types/workflows/CI/badge.svg)](https://github.com/coenttb/swift-svg-types/actions/workflows/ci.yml)

Type-safe Swift definitions for SVG elements, attributes, and value types.

## Overview

`swift-svg-types` provides comprehensive type definitions for SVG (Scalable Vector Graphics), including:

- **SVG Elements**: Circle, Rect, Path, Line, Ellipse, Polygon, and more
- **Container Elements**: G (group), Defs, Symbol, Use, ClipPath, Mask
- **Gradient Elements**: LinearGradient, RadialGradient, Pattern, Stop
- **Text Elements**: Text, TSpan
- **Value Types**: SVGLength, SVGColor, SVGTransform, SVGViewBox
- **Type Safety**: Strongly-typed models with Swift 6.0 concurrency support

## Installation

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-svg-types", from: "0.1.0")
]
```

## Quick Start

### Basic Shapes

```swift
import SVGTypes

// Create a circle
let circle = Circle(cx: 50, cy: 50, r: 40)

// Create a rectangle with rounded corners
let rect = Rect(x: 10, y: 10, width: 100, height: 80, rx: 5, ry: 5)

// Create a path
let path = Path(d: "M10 10 L90 90")
```

### Value Types

```swift
// SVGLength with units
let pixels = SVGLength.px(100)
let percentage = SVGLength.percentage(50)
let em = SVGLength.em(2.5)

print(pixels.stringValue)      // "100px"
print(percentage.stringValue)  // "50%"

// SVGColor
let hex = SVGColor.hex("#FF5733")
let rgb = SVGColor.rgb(r: 255, g: 87, b: 51)
let named = SVGColor.named("red")

print(hex.stringValue)   // "#FF5733"
print(rgb.stringValue)   // "rgb(255,87,51)"

// SVGViewBox
let viewBox = SVGViewBox(width: 100, height: 200)
print(viewBox.stringValue)  // "0 0 100 200"
```

## Usage Examples

### Transformations

```swift
// Create transforms
let translate = SVGTransform.translate(x: 10, y: 20)
let rotate = SVGTransform.rotate(angle: 45)
let scale = SVGTransform.scale(x: 2.0, y: 2.0)

print(translate.stringValue)  // "translate(10 20)"
print(rotate.stringValue)     // "rotate(45)"

// Use in group
let group = G(transform: translate)
// Or multiple transforms
let multiGroup = G(transform: [translate, rotate, scale])
```

### Gradients

```swift
// Linear gradient
let gradient = LinearGradient(
    id: "myGradient",
    x1: "0%",
    y1: "0%",
    x2: "100%",
    y2: "100%"
)

// Radial gradient
let radial = RadialGradient(
    id: "radialGrad",
    cx: "50%",
    cy: "50%",
    r: "50%"
)

// Gradient stop
let stop = Stop(
    offset: "50%"
)
```

### Complex Shapes

```swift
// Ellipse
let ellipse = Ellipse(cx: 100, cy: 50, rx: 80, ry: 40)

// Line
let line = Line(x1: 0, y1: 0, x2: 100, y2: 100)

// Polygon
let triangle = Polygon(
    points: "50,0 100,100 0,100"
)

// Polyline
let polyline = Polyline(
    points: "0,0 50,50 100,0"
)
```

### Text Elements

```swift
// Text
let text = Text(
    x: 10,
    y: 20,
    content: "Hello SVG"
)

// Text span
let tspan = TSpan(
    x: 10,
    y: 30,
    dx: 5,
    dy: 10
)
```

### Container Elements

```swift
// Definitions container
let defs = Defs()

// Symbol for reusable graphics
let symbol = Symbol(
    id: "mySymbol",
    viewBox: "0 0 100 100"
)

// Use element to reference symbols
let use = Use(
    href: "#mySymbol",
    x: 50,
    y: 50
)

// Clip path
let clipPath = ClipPath(
    id: "myClip"
)

// Mask
let mask = Mask(
    id: "myMask",
    x: 0,
    y: 0,
    width: 100,
    height: 100
)
```

### SVG Attributes

```swift
// Fill rules
let fillRule: SVGFillRule = .evenodd  // or .nonzero

// Line caps
let lineCap: SVGLineCap = .round  // .butt, .square

// Line joins
let lineJoin: SVGLineJoin = .miter  // .round, .bevel

// Text anchors
let anchor: SVGTextAnchor = .middle  // .start, .end

// Display
let display: SVGDisplay = .none  // .inline, .block
```

## Architecture

### Element Protocol

All SVG elements conform to `SVGElementType`:

```swift
public protocol SVGElementType {
    static var tagName: String { get }
    static var isSelfClosing: Bool { get }
}
```

### Value Types

The package includes type-safe value types:

- `SVGPoint`: 2D point (x, y)
- `SVGSize`: Size (width, height)
- `SVGRect`: Rectangle (x, y, width, height)
- `SVGViewBox`: ViewBox (minX, minY, width, height)
- `SVGColor`: Color values (named, hex, rgb, rgba)
- `SVGLength`: Lengths with units (px, %, em, ex, etc.)
- `SVGTransform`: Transformations (translate, rotate, scale, skew, matrix)

### Type Safety

All types are:
- `Sendable` for Swift 6.0 concurrency
- `Equatable` for value comparisons
- Immutable with `let` properties

## Related Packages

- [coenttb/swift-svg](https://github.com/coenttb/swift-svg) - DSL for type-safe SVG generation
- [coenttb/swift-svg-printer](https://github.com/coenttb/swift-svg-printer) - Print SVG elements to strings
- [coenttb/swift-html](https://github.com/coenttb/swift-html) - HTML DSL with SVG integration

## Requirements

- Swift 6.0+
- macOS 14+ / iOS 17+ / Linux

## License

This package is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Support

For issues, questions, or contributions, please visit the [GitHub repository](https://github.com/coenttb/swift-svg-types).
