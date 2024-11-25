#import "colors.typ" as colors: *

#align(left, image("Images_template/logo_usp_CBMS.jpg", width: 70%))

#rect(inset: 8pt, stroke: Prune)[
  *Titre:* Titre de la thèse (à remplir manuellement) ....................................................................... \
  *Mots clés:* Mot clé 1, à remplir manuellement \

  #box(height: 74%,
 columns(2, gutter: 11pt)[
   #set par(justify: true)
   *Résumé*: #lorem(570)
 
 ]
)
]

#align(left, image("Images_template/logo_usp_CBMS.jpg", width: 70%))

#rect(inset: 8pt, stroke: Prune)[
  *Title:*Thesis title (to be filled in manually)................................................................................ \
  *Keywords:* Keyword 1, to be filled in manually\

  #box(height: 76%,
 columns(2, gutter: 11pt)[
   #set par(justify: true)
   *Abstract*: #lorem(570)

 ]
)
]
