#import "@preview/minitoc:0.1.0": *
#import "template/colors.typ" as colors: *
= Chapter 2
<Chapter_2>

#text(size: 14pt, weight: "medium")[Contents]
#v(-20pt)
#figure(block(width: 100%, stroke: (top: Prune, bottom: Prune),
inset: 8pt,
minitoc(indent: auto, fill: repeat(box(width: 1cm / 4, ".")))),   
kind: "outline",
supplement: none,
outlined: false)

#pagebreak()

== Introduction
<C2_Intro>
#lorem(50)

== Part 1
<C2_1>
#lorem(100)

=== Part 1.1
<C2_1.1>
#lorem(100)

=== Part 1.2
<C2_1.2>
#lorem(100)

== Part 2
<C2_2>
#lorem(100)

=== Part 2.1
<C2_2.1>
#lorem(100)

=== Part 2.2
<C2_2.2>
#lorem(100)

== Conclusion
<C2_Conclusion>
#lorem(50)
