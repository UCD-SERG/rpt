# R Package Template

A comprehensive template for creating R packages following UCD-SERG standards, based on the structure of [serocalculator](https://github.com/UCD-SERG/serocalculator) and [serodynamics](https://github.com/ucdavis/serodynamics/).

## Features

This template includes:

- **Standard R package structure** with `R/`, `tests/`, `man/`, `vignettes/`, `data/`, and `data-raw/` directories
- **GitHub Actions workflows** for:
  - R-CMD-check on multiple platforms
  - Test coverage reporting with codecov
  - pkgdown documentation deployment
  - Linting and spell checking
  - Automated NEWS.md and version checks
  - PR commands for documentation and styling
- **Code quality tools**:
  - `.lintr` configuration for consistent code style
  - Example test files using testthat
  - codecov.yml for test coverage configuration
- **Documentation**:
  - README.Rmd template with badges
  - pkgdown configuration for website generation
  - Example vignettes
  - Quarto configuration for advanced documentation
- **Contributing guidelines**:
  - CONTRIBUTING.md with detailed instructions
  - Pull request template
  - Code of Conduct
  - Issue templates

## Usage

1. Clone this repository or use it as a template
2. Replace `packagename` with your actual package name in all files
3. Update DESCRIPTION with your package details
4. Update README.Rmd with your package information
5. Add your R functions to the `R/` directory
6. Add tests to the `tests/testthat/` directory
7. Add documentation to vignettes
8. Run `devtools::document()` to generate man pages
9. Run `devtools::check()` to ensure everything works

## Files to Update

When using this template, update the following:

- [ ] `DESCRIPTION` - package metadata
- [ ] `README.Rmd` - package description and examples
- [ ] `.Rbuildignore` - replace `packagename` with your package name
- [ ] `.gitignore` - replace `packagename` with your package name
- [ ] `packagename.Rproj` - rename to `yourpackage.Rproj`
- [ ] `pkgdown/_pkgdown.yml` - update URLs and content structure
- [ ] `.github/CONTRIBUTING.md` - update package name
- [ ] All R files in `R/` directory
- [ ] All test files in `tests/` directory

## License

MIT License - see LICENSE file for details
