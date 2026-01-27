# Copilot Instructions for R Package Template

## Repository Overview

This is a template repository for creating R packages following UCD-SERG standards.

- **Type**: R package template
- **Language**: R (>= 4.1.0)
- **Key Dependencies**: See DESCRIPTION file

## Setup Requirements

### Copilot Setup Workflow

The repository includes a `.github/workflows/copilot-setup-steps.yml` workflow that automatically configures the GitHub Copilot coding agent's environment with all required dependencies.

#### What the Workflow Does

1. Installs system dependencies (libcurl, libssl, libxml2, graphics libraries)
2. Sets up R (>= 4.1.0)
3. Installs R package dependencies
4. Verifies installation

#### When to Use This Template

1. Clone or use this repository as a template
2. Replace all instances of `packagename` with your actual package name
3. Update DESCRIPTION, README.Rmd, and other files with your package details
4. Add your R functions to `R/` directory
5. Add tests to `tests/testthat/` directory
6. Run `devtools::document()` to generate documentation
7. Run `devtools::check()` to validate your package

## Development Workflow

### Building and Checking

```r
# Install development dependencies
devtools::install_dev_deps()

# Generate documentation
devtools::document()

# Run R CMD check
devtools::check()

# Run tests
devtools::test()

# Build package
devtools::build()
```

### Linting

```r
# Lint the package
lintr::lint_package()
```

### Testing

```r
# Run all tests
devtools::test()

# Run specific test file
devtools::test_file("tests/testthat/test-example_function.R")

# Run tests with coverage
covr::package_coverage()
```

## Local Validation Requirements

**CRITICAL**: Before committing any code changes or requesting review, ALWAYS run the following validation commands locally:

1. **`lintr::lint_package()`** - Check code style and identify linting issues
2. **`devtools::document()`** - Generate/update documentation from roxygen2 comments
3. **`devtools::test()`** - Run all test suites to ensure tests pass
4. **`devtools::check()`** - Run R CMD check to validate package structure and compliance
5. **`altdoc::render_docs()`** - **MANDATORY**: Build the full documentation website locally and inspect the output to ensure all documentation renders correctly, including vignettes and articles

These commands must be run in this order and all must pass without errors before pushing changes or requesting code review. This ensures that CI/CD workflows will pass and prevents wasting reviewer time on fixable issues.

**IMPORTANT**: For changes affecting documentation or vignettes, you MUST build and visually inspect the documentation site output (located in `docs/`) to verify that everything renders as expected.

### Example Validation Workflow

```r
# Complete validation sequence before committing
devtools::document()      # Update documentation
devtools::test()          # Verify all tests pass
devtools::check()         # Run full package check
lintr::lint_package()     # Verify code style
pkgload::load_all()       # Load the package
altdoc::render_docs()     # Build documentation site to verify documentation

# Manually inspect docs/ directory to verify rendering
# Check docs/vignettes/*.md for correct output
# Verify links and images work correctly

# Only commit and push if all checks pass AND visual inspection confirms correct rendering
```

## Package Structure

- `R/` - R source files
- `tests/testthat/` - Unit tests
- `man/` - Documentation (auto-generated)
- `vignettes/` - Long-form documentation
- `data/` - Package data
- `data-raw/` - Scripts to generate package data
- `inst/` - Additional files to include in the package
- `.github/` - GitHub Actions workflows and templates

## Code Style

- Follow the [tidyverse style guide](https://style.tidyverse.org)
- Use roxygen2 for documentation
- Include tests for all exported functions
- Update NEWS.md for user-facing changes
  - Use the `(#issue_number)` notation to link to issues (e.g., `(#123)`)
  - Use the `(#PR_number)` notation to link to pull requests
  - Use `@username` to credit **external** contributors only (not internal team members)
  - See [R Packages - NEWS.md](https://r-pkgs.org/other-markdown.html#sec-news) for details

## Continuous Integration

The template includes GitHub Actions workflows for:
- R-CMD-check on multiple platforms
- Test coverage reporting
- altdoc documentation deployment
- Spell checking
- Linting
- Version checking
- NEWS.md changelog checking
