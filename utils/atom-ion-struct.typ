#import "@preview/cetz:0.4.2"

// 原子、离子结构示意图
#let ai-struct(
  proton: 0,
  electrons: (),
) = {
  if type(proton) == int {
    if proton <= 0 {
      panic("expected positive integer, found negative.")
    } else if proton > 118 {
      panic("proton must be < 119!")
    }
  } else if type(proton) == content {
    panic("expected single characters, positive integer. found content!")
  } else if proton.len() > 1 {
    panic("Only single characters allowed.")
  }

  cetz.canvas({
    import cetz.draw: *
    set-style(stroke: .5pt)
    circle((), radius: 1em, name: "circle", anchor: "east")
    content("circle", [+#proton])
    let index = 0
    let base-x = .24
    let delta-x = .4
    let base-deg = 22deg
    let base-radius = 2.5em
    for e in electrons {
      arc(
        (index * delta-x, 0),
        start: base-deg,
        stop: -base-deg,
        anchor: "center",
        radius: base-radius + index * .4em,
      )
      content((.24 + index * .438, 0), box(fill: white)[#e])
      index += 1
    }
  })
}

