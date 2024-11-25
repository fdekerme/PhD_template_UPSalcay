#import "template/lib.typ": template_UPS 
#import "template/colors.typ" as colors: *
#import "@preview/hydra:0.5.1": hydra
#import "@preview/glossarium:0.5.0": make-glossary, register-glossary, print-glossary, gls, glspl
#show: make-glossary

#show: template_UPS.with(
  en_title: "Thesis title in english",
  fr_title: "Titre de la thèse en français",
  author: "Prénom NOM",
  NNT: "YYYYUPASZXXX",
  ecole_doctorale: "École doctorale n◦ 582 : cancérologie : biologie- médecine- santé (CMBS)",
  specialite: "Spécialité de doctorat : Recherche clinique, innovation technologique, santé publique",
  graduate_school : "Graduate School : Sciences de la vie et santé. Référent : Faculté de médecine",
  laboratoire: "U007, (Université Paris-Saclay, Institut Gustave Roussy, INSERM)",
  
  encadrement: "Prenom NOM, PhD.",

  referent: "Référent : Faculté de médecine",
  date_soutenance: "20 novembre 2024",
  jury: ( 
    (
      name: "Prénom NOM",
      title: [Prof.],
      affiliation: [Université de XXX, Suisse],
      role: [Rapporteur],
      email: "prenom.nom@university.com"
    ),

        (
      name: "Prénom NOM",
      title: [Prof.],
      affiliation: [Université de XXX, Allemagne],
      role: [Rapportrice],
      email: "prenom.nom@university.com"
    ),

        (
      name: "Prénom NOM",
      title: [Prof.],
      affiliation: [Université de XXX, France],
      role: [Examinateur],
      email: "prenom.nom@university.com"
    ),

        (
      name: "Prénom NOM",
      title: [Prof.],
      affiliation: [Université de XXX, Italie],
      role: [Examinatrice],
      email: "prenom.nom@university.com"
    ),
),

)


#show "al.": it => [#text("al.", style: "italic")] // tout les ".al" seront en italique

#pagebreak()
#pagebreak(to: "odd")
#include("Introduction.typ")
#pagebreak(to: "odd")
#include "Chapitre_1.typ"
#pagebreak(to: "odd")
#include "Chapitre_2.typ"
#pagebreak(to: "odd")
#include "Chapitre_3.typ"
#pagebreak(to: "odd")
#include "Conclusion.typ"
#pagebreak(to: "odd")
#heading(numbering: none)[Bibliography]
#v(1.5cm)
#bibliography("My Library.bib", title: none)
#pagebreak(to: "odd")
//#show: appendix
#include "List_of_publications.typ"
#pagebreak(to: "odd")
#include "Substantial_French_summary.typ"
/* #pagebreak(to: "odd")
#include "List_of_Figures.typ"
#pagebreak(to: "odd")
#include "List_of_Tables.typ" */

