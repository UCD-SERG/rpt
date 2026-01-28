# Quarto Vignette Example
UC Davis Seroepidemiology Research Group (UCD-SERG)
Invalid Date

``` r
library(rpt)
```

## Introduction

This vignette demonstrates how to use Quarto (`.qmd`) files as vignettes
in R packages. Quarto is the next-generation version of R Markdown,
offering enhanced features and better integration with multiple
programming languages.

## Why Use Quarto?

Quarto offers several advantages over traditional R Markdown:

1.  **Enhanced features**: Better support for cross-references,
    callouts, and other advanced formatting
2.  **Multiple engines**: Works with R, Python, Julia, and Observable
3.  **Modern syntax**: Cleaner YAML and chunk options using `#|` syntax
4.  **Better publishing**: Improved website and book publishing
    capabilities

## Basic Example

Here’s a basic example using the package:

``` r
# Create some sample data
sample_data <- c(1, 2, 3, 4, 5, 10, 15, 20)

# Use the example function
result <- example_function(sample_data)
result
#> [1] 4.5
```

## Quarto Features

### Callouts

> **Note**
>
> This is a callout block that highlights important information.

> **Tip**
>
> Quarto supports multiple types of callouts: note, tip, warning,
> important, and caution.

### Code Chunks with Modern Syntax

You can use the modern `#|` syntax for chunk options:

``` r
# Create a simple plot
plot(sample_data, 
     main = "Sample Data", 
     xlab = "Index", 
     ylab = "Value",
     pch = 19,
     col = "steelblue")
```

![](quarto_vignette.markdown_strict_files/figure-markdown_strict/fig-plot-1.png)

## Equations

Quarto has excellent support for mathematical equations using LaTeX
syntax:

Inline equation: *E* = *m**c*<sup>2</sup>

Display equation:

$$
\bar{x} = \frac{1}{n}\sum\_{i=1}^{n} x_i
$$

## Tables

<table>
<thead>
<tr>
<th>Feature</th>
<th>R Markdown</th>
<th>Quarto</th>
</tr>
</thead>
<tbody>
<tr>
<td>YAML</td>
<td>Standard</td>
<td>Enhanced</td>
</tr>
<tr>
<td>Chunks</td>
<td><code>{r, option=value}</code></td>
<td><code>#| option: value</code></td>
</tr>
<tr>
<td>Publishing</td>
<td>Good</td>
<td>Excellent</td>
</tr>
<tr>
<td>Cross-refs</td>
<td>Limited</td>
<td>Native</td>
</tr>
</tbody>
</table>

## Summary

Quarto vignettes provide a modern, feature-rich way to document R
packages. They integrate seamlessly with documentation systems and offer
enhanced capabilities for technical documentation.

## References

For more information, see:

-   [Quarto Documentation](https://quarto.org/)
-   [Using Quarto with R](https://quarto.org/docs/computations/r.html)
-   (R Core Team 2024)
-   (UCD-SERG 2024)

R Core Team. 2024. *R: A Language and Environment for Statistical
Computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

UCD-SERG. 2024. *Rpt: R Package Template*.
<https://github.com/UCD-SERG/rpt>.
