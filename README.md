# swift-svg-types

A comprehensive, type-safe domain model of SVG elements and attributes in Swift.

## Examples

```swift
import SVGTypes

// Create SVG elements with appropriate attributes
let circle = Circle(cx: 50, cy: 50, r: 40)
let rect = Rect(x: 10, y: 10, width: 100, height: 80)
let path = Path(d: "M10 10 L90 90")
```

### Complex SVG compositions

```swift
let gradient = LinearGradient(
    id: "myGradient",
    x1: "0%", y1: "0%",
    x2: "100%", y2: "100%"
)

let group = G(transform: "translate(50,50) rotate(45)")
```

## Motivation

A domain model for SVG brings type safety and discoverability to SVG generation. This package provides accurate representations of all SVG elements and their specific attributes, ensuring valid SVG output at compile time.

For example, creating a circle reveals only the attributes valid for circles:
```swift
let circle = Circle(
    cx: CGFloat?,        // center x
    cy: CGFloat?,        // center y
    r: CGFloat?,         // radius
    fill: String?,       // fill color
    stroke: String?,     // stroke color
    strokeWidth: CGFloat? // stroke width
)
```

Compare this with rectangles that have a different set of attributes:
```swift
let rect = Rect(
    x: CGFloat?,         // x position
    y: CGFloat?,         // y position
    width: CGFloat?,     // width
    height: CGFloat?,    // height
    rx: CGFloat?,        // corner radius x
    ry: CGFloat?,        // corner radius y
    fill: String?,       // fill color
    stroke: String?      // stroke color
)
```

> [!NOTE]
> `swift-svg-types` is part of a modular ecosystem for SVG generation in Swift. It provides the foundational types, while other packages handle rendering and integration with HTML.
>
> [Read about the architectural decisions behind this approach →](https://coenttb.com/blog/4)

## Showcases

- [coenttb/swift-svg](https://github.com/coenttb/swift-svg) - A Swift DSL for domain-accurate and type-safe SVG generation
- [coenttb/swift-svg-printer](https://github.com/coenttb/swift-svg-printer) - Print SVG elements to strings
- [coenttb/swift-html](https://github.com/coenttb/swift-html) - Integration with HTML generation

Using `swift-svg-types` in your project? Open an issue or submit a PR to add your project to this list!

## Installation

### Swift Package Manager

Add the dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/coenttb/swift-svg-types", from: "0.1.0")
]
```

### Xcode

1. Select File > Add Packages...
2. Enter package URL: `https://github.com/coenttb/swift-svg-types`
3. Choose the main branch or a specific version

## Contribution

Contributions are welcome! Please feel free to submit a Pull Request.

## Feedback

If you have suggestions or find issues, please open a GitHub issue. Your feedback helps make this project better for everyone.

> [Subscribe to my newsletter](http://coenttb.com/en/newsletter/subscribe)
>
> [Follow me on X](http://x.com/coenttb)
>
> [Connect on LinkedIn](https://www.linkedin.com/in/tenthijeboonkkamp)

## License

This project is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.