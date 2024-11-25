#import "@preview/glossarium:0.5.0": make-glossary, register-glossary, print-glossary, gls, glspl

#show: columns.with(2)

#let entry-list = (
    (
     (key: "UPS", short: "UPS", long: "Université Paris-Saclay"),
    ))

#register-glossary(entry-list)
#print-glossary(entry-list)