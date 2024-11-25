#import "colors.typ" as colors: *

#let template_UPS(

  en_title: [],
  fr_title: [],
  author: [],
  NNT: [],
  ecole_doctorale: [],
  specialite: [],
  graduate_school: [],
  laboratoire: [],
  encadrement: [],
  referent: [],
  date_soutenance: [],
  jury:(),
  body

) = {
  // Document settings
  set document(title: en_title, author: author,  date: auto)

  // Link settings
  show link: set text(Link)

  // Citation settings
  show cite: set text(Prune)

  // Heading settings
  set heading(numbering: "1.")
  show heading: it => {
    v(1em)
    it
  }
  show heading.where(level: 1): set heading(numbering: "1.", supplement: [Chapter])
  show heading.where(level: 1): set text(Prune, size: 20pt, weight: "bold")

  // Chapter style (see https://forum.typst.app/t/heading-style-for-specific-section/507/2)
  show heading.where(level: 1): it => {
    set text(font: "Calibri")

    place(
      top + right,
      dy: -4cm,
      line(
        length: 7.5cm,
        stroke: 2pt + maroon,
        angle: 90deg,
      ),
    )
    pad(
      top: 1cm,
      left: -1cm,
      right: 10pt,
      place(top + right, text(fill: black, hyphenate: false, it.body)),
    )

    if it.numbering != none {
      pad(
        top: 0.5cm,
        10pt,
        place(
          top + right,
          dx: 0cm,
          dy: -3cm,
          text(15pt)[Chapter],
        ),
      )
      place(
        top + right,
        dx: 1.5cm,
        dy: 0cm,
        text(
          50pt,
          weight: "regular",
          counter(heading).display(it.numbering),
        ),
      )
    }

    v(2cm)
  }

  show heading.where(level: 2): set text(black, size: 16pt, weight: "bold", font: "Calibri")
  show heading: it => {
    pad(left: 10pt * (it.level - 2), it)
    v(10pt)}

  // List settings
  set list(indent: 2em)
  show list: it => {
    v(10pt)
    it
    v(10pt)
  }

  // Figure settings
  show figure.caption: it => {
    emph(text(8pt, it))}
  show figure: set block(breakable: true)
  show figure: it => {
    v(10pt)
    it
    v(10pt)
  }

  // Outline settings
  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }

  /* // Appendix settings (from https://github.com/typst/typst/discussions/4031)

  let appendix(body) = {
    set heading(numbering: "A", supplement: [Appendix])
    counter(heading).update(0)
    body
  } */

  // First page settings
  set text(lang: "en", font: "Calibri")

  set page("a4", margin: (
    left: 5cm, 
    bottom: 2cm,
    top: 1cm,
    right: 1cm), 

    background: align(left, image("Images_template/Frame-ups.jpg"))
  )


  place(bottom, dx: -170pt, dy: -50pt, rotate(-90deg, 
  text(white, size: 20pt, font: "Calibri", weight: "medium", smallcaps("THESE DE DOCTORAT")) + 
  2*linebreak()+
  text(white, size: 14pt, font: "Calibri", weight: "medium", "NNT : " + NNT)))

  set align(right)
  v(50mm)
  text(Prune, size: 22pt, en_title)
  linebreak()
  v(5pt)
  text(black, size: 18pt, style: "italic", fr_title)
  linebreak()

  v(1cm)
  text(black, size: 14pt, weight: "bold", "Thèse de doctorat de l'université Paris-Saclay")

  v(6mm)

  text(black, size: 14pt, ecole_doctorale)
   linebreak()
  text(black, size: 14pt, specialite)
   linebreak()
  text(black, size: 14pt, graduate_school)

  v(4mm)

  text(black, size: 12pt, "Thèse préparée dans l'unité de recherche " + laboratoire + ", sous la direction de " + encadrement)

  linebreak()
  v(6mm)

  text(black, weight: "bold", size: 12pt, "Thèse soutenue à Paris-Salcay le " + date_soutenance + ", par ")
  linebreak()
  text(Prune, weight: "extrabold", size: 18pt, author)

  v(25pt)
  set align(left)
  text(Prune, size: 14pt, weight: "bold", "Composition du jury") 
  linebreak()
  text(Prune, size: 8pt, "Membres du jury avec voix délibérative")

  v(-2mm)
  set text(black, size: 10pt)
  table(
    columns: (9cm, auto),
    inset: 4pt,
    align: (left, left),
    stroke: none,
    table.vline(stroke: Prune),
    ..jury.map(member => (
  text(weight: "bold", member.name), member.role,
  member.title + member.affiliation, [])).flatten()
  ) // thanks to "flokl"for the piece of code: https://forum.typst.app/t/paris-saclay-phd-thesis-template/1886/2


  pagebreak()

  set page("a4", margin: (
    left: 4cm, 
    bottom: 4cm,
    top: 4cm,
    right: 4cm),
    background: none,
    numbering: none)
  set text(lang: "en", font: "Times New Roman")

  pagebreak(to: "odd")
  set page(numbering: "i")
  counter(page).update(1)

  include "Citation.typ"

  pagebreak(to: "odd")

  include("Remerciements.typ")

  pagebreak(to: "even")

  set page("a4", margin: auto)

  include "Abstract.typ"

  // Outlines

  pagebreak(to: "odd")
  set page("a4", margin: (
    left: 2cm, 
    bottom: 4cm,
    top: 4cm,
    right: 2cm))

  heading(numbering: none, outlined: false)[Contents]
  v(1.5cm)
  outline(title: none, indent: auto, fill: repeat(box(width: 1cm / 4, ".")))


  pagebreak(to: "odd")

  // Glossary
  set page("a4", margin: (
    left: 2cm, 
    bottom: 4cm,
    top: 4cm,
    right: 2cm))
  heading(numbering: none, outlined: false)[Glossary]
  v(1.5cm)

  include("glossary.typ")


  //set page("a4", margin: (inside: 5cm, outside: 3cm, bottom: 4cm, top: 4cm), columns: 1)
  set page("a4", margin: (
    left: 3cm, 
    right: 3cm, 
    bottom: 3cm, 
    top: 3cm), columns: 1, numbering: "1")

  // Tables settings (see https://typst.app/docs/guides/table-guide/)
  // Place here and not at the top of this document because first page table have to be different
  show table.cell.where(x: 1): set text(weight: "medium")
  show table.cell.where(y: 0): set text(weight: "bold")
  let frame(stroke) = (x, y) => (
    left: if x > 0 { 0pt } else { stroke },
    right: stroke,
    top: if y < 2 { stroke } else { 0pt },
    bottom: stroke,
  )

  set table(
    fill: (_, y) => if calc.odd(y) { table_color },
    stroke: frame(rgb("21222C")),
    inset: 5pt
  )

  set par(justify: true, first-line-indent: 1.5em, leading: 1.5em, linebreaks: "optimized")
  body
}