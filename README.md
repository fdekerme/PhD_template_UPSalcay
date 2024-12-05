# PhD Template UPSalcay

This repository contains a Typst template for writing a PhD thesis at UPSalcay. Follow the instructions below to get started.

# Important Note on PDF/A-2b Export with Typst 0.12

Typst 0.12 allows you to export the file in PDF/A-2b format with the following command:

```sh
typst compile --pdf-standard a-2b main.typ
```
However, the generated file may not necessarily pass the compliance tests available at [CINES](https://facile.cines.fr/) or [ADUM](https://adum.fr) during submission.
For more information, see the discussion [here](https://forum.typst.app/t/when-will-pdf-a-export-be-available/816).

It may be necessary to convert the Typst generated `.pdf` file to make it valid. You can do this using tools like Adobe Reader Pro (paid version) or by contacting CINES support at [svp@cines.fr](mailto:svp@cines.fr).

## Prerequisites

- [Typst](https://typst.app/) installed on your system.

## Getting Started
  Just edit the `main.typ` file to set your thesis title and author name.

- **Bibliography:**
  Update the `bibliography.bib` file with your references. You can directly export this file from Zotero (for instance)

## Contributing

Feel free to submit issues or pull requests if you find any bugs or have suggestions for improvements.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

