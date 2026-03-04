#import "@local/ezexam:0.2.9":*
#import "/lib.typ":*

#show: setup

#e-bridge(
  equation: [K] + [Cl<A>O#sub[3] + 6H] + [Cl<B> = KCl + 3] + [Cl<C>#sub[2]$arrow.t$ + 3H#sub[2]O],
  get: (from: <A>, to: <C>, e: 5, tsign: none),
  lose: (from: <B>, to: <C>, e: 5),
)


#e-bridge(
  equation: [Cu<A2>O + H<A1>#sub[2] = Cu + H#sub[2]O],
  get: (from: <A1>, to: <A2>, e: 2, tsign: none),
)


#e-bridge(
  equation: [Cl<B1>#sub[2] + 2NaOH = NaCl + NaClO + H#sub[2]O],
  get: (from: <B1>, to: <B1>, e: 1, tsign: none),
)


#ai-struct(proton: 16, electrons: (2, 8, 6))

#ai-struct(proton: "z", electrons: (2, 8, 8, "X"))

#e-dot-diagram(
  elements: (
    top: "H",
    bottom: "H",
    right: "H",
    left: "H",
    center: "H",
  ),
  charge: 1,
)