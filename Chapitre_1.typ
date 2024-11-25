#import "@preview/minitoc:0.1.0": *
#import "template/colors.typ" as colors: *
= Chapter 1
<Chapter_1>

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
<C1_Intro>
#lorem(50)


#figure(image("Figures/Chapter_1/Exp.png", width: 80%),
caption:[Image from https://en.wikipedia.org/wiki/Exponential_function], 
kind: image,
outlined: true) <Image>


== Part 1
<C1_1>
To cite the big table, just type @C1_large_table_1\
To cite an other part of the document, just type @Chapter_2.\
To cite a reference from the bibliography (My Library.bib), just type @dekermenguyLymphoDoseLymphocyteDose2024\
To cite an element from the gloassary (glossary.typ), just type @UPS

#include "Chapitre_1_table.typ"

=== Part 1.1
<C1_1.1>

#lorem(100)

=== Part 1.2
<C1_1.2>
#lorem(100)

#figure(caption: [Caption of the figure], 
table(
  columns: 2,
  [*Amount*], [*Ingredient*],
  [360g], [Baking flour],
  [250g], [Butter (room temp.)],
  [150g], [Brown sugar],
  [100g], [Cane sugar],
  [100g], [70% cocoa chocolate],
  [100g], [35-40% cocoa chocolate],
  [2], [Eggs],
  [Pinch], [Salt],
  [Drizzle], [Vanilla extract],
), 
kind: table,
outlined: true) <C1_table_2>


== Part 2
<C1_2>
#lorem(100)

=== Part 2.1
<C1_2.1>
#lorem(100)

=== Part 2.2
<C1_2.2>
#lorem(100)

== Conclusion
<C1_Conclusion>
#lorem(50)
