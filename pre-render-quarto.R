#!/usr/bin/env Rscript

# Pre-render script to generate all Quarto formats (HTML + RevealJS)
# This ensures that RevealJS slides are available when pkgdown builds the site

cat("Pre-rendering Quarto documents to all formats...\n")

# Find all .qmd files in vignettes
qmd_files <- c(
  "vignettes/quarto_vignette.qmd",
  "vignettes/articles/quarto_article.qmd"
)

# Render each file to all formats
for (qmd_file in qmd_files) {
  if (file.exists(qmd_file)) {
    cat(sprintf("Rendering %s...\n", qmd_file))
    tryCatch({
      # Render to all formats specified in the document YAML
      quarto::quarto_render(qmd_file, output_format = "all", quiet = FALSE)
      cat(sprintf("Successfully rendered %s\n", qmd_file))
    }, error = function(e) {
      cat(sprintf("Error rendering %s: %s\n", qmd_file, e$message))
    })
  } else {
    cat(sprintf("Warning: %s not found\n", qmd_file))
  }
}

cat("Pre-rendering complete!\n")
