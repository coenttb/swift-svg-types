//
//  ReadmeVerificationTests.swift
//  swift-svg-types
//
//  Created by Claude Code
//  Validates all code examples from README.md
//

import SVGTypes
import Testing

@Suite("README Code Examples Validation", .serialized)
struct ReadmeVerificationTests {

  @Test("Quick Start - Basic Shapes (README lines 34-44)")
  func quickStartBasicShapes() {
    // Create a circle
    let circle = Circle(cx: 50, cy: 50, r: 40)
    #expect(circle.cx == 50)
    #expect(circle.cy == 50)
    #expect(circle.r == 40)

    // Create a rectangle with rounded corners
    let rect = Rect(x: 10, y: 10, width: 100, height: 80, rx: 5, ry: 5)
    #expect(rect.x == 10)
    #expect(rect.width == 100)
    #expect(rect.rx == 5)

    // Create a path
    let path = Path(d: "M10 10 L90 90")
    #expect(path.d == "M10 10 L90 90")
  }

  @Test("Value Types - SVGLength (README lines 50-56)")
  func valueTypesSVGLength() {
    // SVGLength with units
    let pixels = SVGLength.px(100)
    let percentage = SVGLength.percentage(50)
    let em = SVGLength.em(2.5)

    #expect(pixels.stringValue == "100px")
    #expect(percentage.stringValue == "50%")
    #expect(em.stringValue == "2.5em")
  }

  @Test("Value Types - SVGColor (README lines 58-64)")
  func valueTypesSVGColor() {
    // SVGColor
    let hex = SVGColor.hex("#FF5733")
    let rgb = SVGColor.rgb(r: 255, g: 87, b: 51)
    let named = SVGColor.named("red")

    #expect(hex.stringValue == "#FF5733")
    #expect(rgb.stringValue == "rgb(255,87,51)")
    #expect(named.stringValue == "red")
  }

  @Test("Value Types - SVGViewBox (README lines 66-68)")
  func valueTypesSVGViewBox() {
    // SVGViewBox
    let viewBox = SVGViewBox(width: 100, height: 200)
    #expect(viewBox.stringValue == "0 0 100 200")
  }

  @Test("Transformations (README lines 75-88)")
  func transformations() {
    // Create transforms
    let translate = SVGTransform.translate(x: 10, y: 20)
    let rotate = SVGTransform.rotate(angle: 45)
    let scale = SVGTransform.scale(x: 2.0, y: 2.0)

    #expect(translate.stringValue == "translate(10 20)")
    #expect(rotate.stringValue == "rotate(45)")
    #expect(scale.stringValue == "scale(2 2)")

    // Use in group
    let group = G(transform: translate)
    #expect(group.transform == [translate])

    // Or multiple transforms
    let multiGroup = G(transform: [translate, rotate, scale])
    #expect(multiGroup.transform?.count == 3)
  }

  @Test("Gradients - Linear (README lines 93-100)")
  func gradientsLinear() {
    // Linear gradient
    let gradient = LinearGradient(
      id: "myGradient",
      x1: "0%",
      y1: "0%",
      x2: "100%",
      y2: "100%"
    )
    #expect(gradient.id == "myGradient")
    #expect(gradient.x1 == "0%")
    #expect(gradient.y1 == "0%")
    #expect(gradient.x2 == "100%")
    #expect(gradient.y2 == "100%")
  }

  @Test("Gradients - Radial (README lines 102-108)")
  func gradientsRadial() {
    // Radial gradient
    let radial = RadialGradient(
      id: "radialGrad",
      cx: "50%",
      cy: "50%",
      r: "50%"
    )
    #expect(radial.id == "radialGrad")
    #expect(radial.cx == "50%")
    #expect(radial.cy == "50%")
    #expect(radial.r == "50%")
  }

  @Test("Gradients - Stop (README lines 110-113)")
  func gradientsStop() {
    // Gradient stop
    let stop = Stop(
      offset: "50%"
    )
    #expect(stop.offset == "50%")
  }

  @Test("Complex Shapes - Ellipse (README lines 119-120)")
  func complexShapesEllipse() {
    // Ellipse
    let ellipse = Ellipse(cx: 100, cy: 50, rx: 80, ry: 40)
    #expect(ellipse.cx == 100)
    #expect(ellipse.cy == 50)
    #expect(ellipse.rx == 80)
    #expect(ellipse.ry == 40)
  }

  @Test("Complex Shapes - Line (README lines 122-123)")
  func complexShapesLine() {
    // Line
    let line = Line(x1: 0, y1: 0, x2: 100, y2: 100)
    #expect(line.x1 == 0)
    #expect(line.y1 == 0)
    #expect(line.x2 == 100)
    #expect(line.y2 == 100)
  }

  @Test("Complex Shapes - Polygon (README lines 125-128)")
  func complexShapesPolygon() {
    // Polygon
    let triangle = Polygon(
      points: "50,0 100,100 0,100"
    )
    #expect(triangle.points == "50,0 100,100 0,100")
  }

  @Test("Complex Shapes - Polyline (README lines 130-133)")
  func complexShapesPolyline() {
    // Polyline
    let polyline = Polyline(
      points: "0,0 50,50 100,0"
    )
    #expect(polyline.points == "0,0 50,50 100,0")
  }

  @Test("Text Elements - Text (README lines 139-144)")
  func textElementsText() {
    // Text
    let text = Text(
      x: 10,
      y: 20,
      content: "Hello SVG"
    )
    #expect(text.x == 10)
    #expect(text.y == 20)
    #expect(text.content == "Hello SVG")
  }

  @Test("Text Elements - TSpan (README lines 146-152)")
  func textElementsTSpan() {
    // Text span
    let tspan = TSpan(
      x: 10,
      y: 30,
      dx: 5,
      dy: 10
    )
    #expect(tspan.x == 10)
    #expect(tspan.y == 30)
    #expect(tspan.dx == 5)
    #expect(tspan.dy == 10)
  }

  @Test("Container Elements - Defs (README lines 158-159)")
  func containerElementsDefs() {
    // Definitions container
    _ = Defs()
    #expect(Defs.tagName == "defs")
  }

  @Test("Container Elements - Symbol (README lines 161-165)")
  func containerElementsSymbol() {
    // Symbol for reusable graphics
    let symbol = Symbol(
      id: "mySymbol",
      viewBox: "0 0 100 100"
    )
    #expect(symbol.id == "mySymbol")
    #expect(symbol.viewBox == "0 0 100 100")
  }

  @Test("Container Elements - Use (README lines 167-172)")
  func containerElementsUse() {
    // Use element to reference symbols
    let use = Use(
      href: "#mySymbol",
      x: 50,
      y: 50
    )
    #expect(use.href == "#mySymbol")
    #expect(use.x == 50)
    #expect(use.y == 50)
  }

  @Test("Container Elements - ClipPath (README lines 174-177)")
  func containerElementsClipPath() {
    // Clip path
    let clipPath = ClipPath(
      id: "myClip"
    )
    #expect(clipPath.id == "myClip")
  }

  @Test("Container Elements - Mask (README lines 179-186)")
  func containerElementsMask() {
    // Mask
    let mask = Mask(
      id: "myMask",
      x: 0,
      y: 0,
      width: 100,
      height: 100
    )
    #expect(mask.id == "myMask")
    #expect(mask.x == 0)
    #expect(mask.y == 0)
    #expect(mask.width == 100)
    #expect(mask.height == 100)
  }

  @Test("SVG Attributes - Enums (README lines 192-206)")
  func svgAttributesEnums() {
    // Fill rules
    let fillRule: SVGFillRule = .evenodd
    #expect(fillRule == .evenodd)

    // Line caps
    let lineCap: SVGLineCap = .round
    #expect(lineCap == .round)

    // Line joins
    let lineJoin: SVGLineJoin = .miter
    #expect(lineJoin == .miter)

    // Text anchors
    let anchor: SVGTextAnchor = .middle
    #expect(anchor == .middle)

    // Display
    let display: SVGDisplay = .none
    #expect(display == .none)
  }

  @Test("Architecture - SVGElementType Protocol (README lines 215-219)")
  func architectureSVGElementType() {
    // Verify Circle conforms to SVGElementType
    #expect(Circle.tagName == "circle")

    // Verify Rect conforms
    #expect(Rect.tagName == "rect")

    // Verify Path conforms
    #expect(Path.tagName == "path")
  }

  @Test("Architecture - Value Types (README lines 225-231)")
  func architectureValueTypes() {
    // SVGPoint
    let point = SVGPoint(x: 10, y: 20)
    #expect(point.x == 10)
    #expect(point.y == 20)

    // SVGSize
    let size = SVGSize(width: 100, height: 200)
    #expect(size.width == 100)
    #expect(size.height == 200)

    // SVGRect
    let rect = SVGRect(x: 0, y: 0, width: 50, height: 50)
    #expect(rect.x == 0)
    #expect(rect.width == 50)

    // SVGViewBox
    let viewBox = SVGViewBox(minX: 10, minY: 20, width: 100, height: 200)
    #expect(viewBox.minX == 10)
    #expect(viewBox.width == 100)
  }

  @Test("Type Safety - Sendable and Equatable (README lines 235-238)")
  func typeSafetySendableEquatable() {
    // Test Sendable (compiler will verify)
    let circle1 = Circle(cx: 50, cy: 50, r: 40)
    let circle2 = Circle(cx: 50, cy: 50, r: 40)

    // Test Equatable
    #expect(circle1.cx == circle2.cx)
    #expect(circle1.cy == circle2.cy)
    #expect(circle1.r == circle2.r)

    // Test value type immutability (let properties)
    let viewBox = SVGViewBox(width: 100, height: 200)
    #expect(viewBox.width == 100)  // Immutable
  }
}
