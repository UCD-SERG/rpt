# rpt (development version)

* Added DOCX (Word document) format for Quarto vignettes and articles in pkgdown documentation, alongside existing RevealJS format. HTML pages now display an "Other Formats" section with links to both slide and Word document versions
  * Fixed CI failure by installing Chromium for rendering Mermaid diagrams in DOCX format
* PR preview comments now use `recreate: true` to ensure they always appear at the bottom of the PR conversation, preventing them from being hidden in collapsed sections (#31)

* Added RevealJS presentation format for Quarto vignettes and articles in pkgdown documentation. HTML pages now display an "Other Formats" section with links to slide versions (#29)

# rpt 0.0.0.9000

* Initial development version
