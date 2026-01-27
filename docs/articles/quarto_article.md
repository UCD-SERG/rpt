# Advanced Quarto Article

``` r
library(rpt)
```

## Overview

This article demonstrates advanced features of Quarto for pkgdown
articles. Unlike vignettes, articles are only available on the pkgdown
website and are not included in the package bundle.

## When to Use Articles vs Vignettes

**Vignettes** should be used for:

- Core package documentation
- Essential usage examples
- Content that users need offline

**Articles** are better for:

- Extended tutorials
- Case studies and detailed examples
- Content with large datasets or external dependencies
- Supplementary material

## Advanced Quarto Features

### Cross-References

Quarto makes it easy to create cross-references. For example, see
[Figure 1](#fig-scatter) for a scatter plot and [Table 1](#tbl-summary)
for a summary table.

``` r
# Generate sample data
set.seed(123)
x <- rnorm(100)
y <- 2 * x + rnorm(100, 0, 0.5)

# Create scatter plot
plot(x, y, 
     main = "Example Scatter Plot",
     xlab = "X Variable",
     ylab = "Y Variable",
     pch = 16,
     col = rgb(0.2, 0.4, 0.6, 0.6))
abline(lm(y ~ x), col = "red", lwd = 2)
```

![](quarto_article_files/figure-html/fig-scatter-1.png)

Figure 1: Scatter plot demonstrating cross-referencing

### Summary Tables

``` r
data_summary <- data.frame(
  Statistic = c("Mean", "Median", "SD", "Min", "Max"),
  X = c(mean(x), median(x), sd(x), min(x), max(x)),
  Y = c(mean(y), median(y), sd(y), min(y), max(y))
)

knitr::kable(data_summary, digits = 3)
```

| Statistic |      X |      Y |
|:----------|-------:|-------:|
| Mean      |  0.090 |  0.127 |
| Median    |  0.062 |  0.137 |
| SD        |  0.913 |  1.865 |
| Min       | -2.309 | -4.586 |
| Max       |  2.187 |  4.675 |

Table 1: Summary statistics for example data

As shown in [Table 1](#tbl-summary), the variables have similar
distributions.

### Code Folding

You can make code chunks foldable:

Show the code for data preparation

``` r
# Prepare more complex data
complex_data <- data.frame(
  id = 1:50,
  group = rep(c("A", "B"), each = 25),
  value1 = rnorm(50, 100, 15),
  value2 = rnorm(50, 50, 10)
)

# Calculate group statistics
group_stats <- aggregate(
  cbind(value1, value2) ~ group, 
  data = complex_data, 
  FUN = function(x) c(mean = mean(x), sd = sd(x))
)

print(group_stats)
#>   group value1.mean value1.sd value2.mean value2.sd
#> 1     A   101.61247  14.63952   51.727220 10.047051
#> 2     B    98.13191  13.84514   53.261796  8.934998
```

### Tabsets

- [Plot View](#tabset-1-1)
- [Summary View](#tabset-1-2)
- [Raw Data](#tabset-1-3)

&nbsp;

- ![](quarto_article_files/figure-html/unnamed-chunk-3-1.png)

    #>        id           group               value1           value2
    #>  Min.   : 1.00   Length:50          Min.   : 79.60   Min.   :32.43
    #>  1st Qu.:13.25   Class :character   1st Qu.: 89.29   1st Qu.:46.76
    #>  Median :25.50   Mode  :character   Median : 96.64   Median :51.04
    #>  Mean   :25.50                      Mean   : 99.87   Mean   :52.49
    #>  3rd Qu.:37.75                      3rd Qu.:107.93   3rd Qu.:59.34
    #>  Max.   :50.00                      Max.   :132.98   Max.   :72.93

    #>    id group    value1   value2
    #> 1   1     A 132.98216 46.24397
    #> 2   2     A 119.68619 44.38124
    #> 3   3     A  96.02282 46.56083
    #> 4   4     A 108.14791 50.90497
    #> 5   5     A  93.78490 65.98509
    #> 6   6     A  92.85630 49.11435
    #> 7   7     A  88.17096 60.80799
    #> 8   8     A  91.08074 56.30754
    #> 9   9     A 124.76361 48.86360
    #> 10 10     A  99.18958 34.67098

### Advanced Callouts

> **Important Considerations**
>
> When using this package in production:
>
> 1.  Always validate input data
> 2.  Check for missing values
> 3.  Consider computational complexity

> **Performance Warning**
>
> Large datasets may require additional memory and processing time.

### Columns Layout

**Left Column**

This demonstrates a two-column layout in Quarto.

- Feature 1
- Feature 2
- Feature 3

**Right Column**

You can place different content in each column.

![](quarto_article_files/figure-html/unnamed-chunk-6-1.png)

## Working with Package Functions

Here’s how to use the package’s example function with different inputs:

``` r
# Numeric vector
example_function(c(5, 10, 15, 20, 25))
#> [1] 15

# Using with generated data
random_data <- runif(10, min = 0, max = 100)
example_function(random_data)
#> [1] 47.42519
```

## Code Annotations

Quarto supports code annotations for detailed explanations:

``` r
1
2data <- c(1, 2, 3, 4, 5)
3result <- example_function(data)
4print(result)
#> [1] 3
```

- 1:

  Load sample data

- 2:

  Create a simple numeric vector

- 3:

  Apply the example function from the package

- 4:

  Display the results

## Diagrams with Mermaid

``` mermaid
flowchart LR
    A[Input Data] --> B[Validate]
    B --> C[Process]
    C --> D[Output Results]
    D --> E[Visualize]
```

Package workflow diagram

## Mathematical Notation

Quarto excels at mathematical notation. Here’s an example of a
statistical formula:

The standard error of the mean is calculated as:

$$SE = \frac{s}{\sqrt{n}}$$

where $s$ is the sample standard deviation and $n$ is the sample size.

For a confidence interval:

$$CI = \bar{x} \pm t_{\alpha/2,n - 1} \cdot SE$$

## Tips and Best Practices

> **Expanding tip section**
>
> Click to expand this section for additional tips:
>
> 1.  Use descriptive chunk labels for better organization
> 2.  Set global chunk options at the beginning
> 3.  Use cross-references to link related content
> 4.  Leverage callouts for important information
> 5.  Consider code folding for long code blocks

## Conclusion

This article demonstrates the advanced capabilities of Quarto for
creating rich, interactive documentation for R packages. The integration
with pkgdown makes it easy to create professional package websites.

## Learn More

- Visit the [package website](https://ucd-serg.github.io/rpt/)
- Check out the [GitHub repository](https://github.com/UCD-SERG/rpt)
- Read the [Quarto documentation](https://quarto.org/)

## References
