#set page("a4", margin: (
  left: 5cm, 
  right: 5cm), 
  flipped: false)

#rotate(
  -90deg,
  reflow: true)[#figure(caption: [Random text for the table caption.], 
  table(
    columns: (auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,),
    align: (auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,auto,),
    table.header([#strong[~];], [#strong[~];], table.cell(colspan: 9)[#strong[Random Header Text];], [#strong[~];],),
    [], [], [], table.cell(colspan: 3)[#strong[Random Subheader 1];], [], table.cell(colspan: 3)[#strong[Random Subheader 2];], [], [],
    [], [#strong[Column 1];], [#strong[Column 2];], [#strong[Column 3];], [#strong[Column 4];], [#strong[Column 5];], [#strong[Column 6];], [#strong[Column 7];], [#strong[Column 8];], [#strong[Column 9];], [#strong[Column 10];], [#strong[Column 11];],
    [Row 1], [Text 1], [Text 2], [Text 3], [Text 4], [Text 5], [Text 6], [Text 7], [Text 8], [Text 9], [Text 10], [Text 11],
    [Row 2], [Text 12], [Text 13], [Text 14], [Text 15], [Text 16], [Text 17], [Text 18], [Text 19], [Text 20], [Text 21], [Text 22], 
    [Row 3], [Text 23], [Text 24], [Text 25], [Text 26], [Text 27], [Text 28], [Text 29], [Text 30], [Text 31], [Text 32], [Text 33],
    [Row 4], [Text 34], [Text 35], [Text 36], [Text 37], [Text 38], [Text 39], [Text 40], [Text 41], [Text 42], [Text 43], [Text 44],
    [Row 5], [Text 45], [Text 46], [Text 47], [Text 48], [Text 49], [Text 50], [Text 51], [Text 52], [Text 53], [Text 54], [Text 55],
    [Row 6], [Text 56], [Text 57], [Text 58], [Text 59], [Text 60], [Text 61], [Text 62], [Text 63], [Text 64], [Text 65], [Text 66],
    [Row 7], [Text 67], [Text 68], [Text 69], [Text 70], [Text 71], [Text 72], [Text 73], [Text 74], [Text 75], [Text 76], [Text 77],
    [Row 8], [Text 78], [Text 79], [Text 80], [Text 81], [Text 82], [Text 83], [Text 84], [Text 85], [Text 86], [Text 87], [Text 88],
    [Row 9], [Text 89], [Text 90], [Text 91], [Text 92], [Text 93], [Text 94], [Text 95], [Text 96], [Text 97], [Text 98], [Text 99],
    [Row 10], [Text 100], [Text 101], [Text 102], [Text 103], [Text 104], [Text 105], [Text 106], [Text 107], [Text 108], [Text 109], [Text 110]),

  kind: table,
  outlined: true) <C1_large_table_1>]
