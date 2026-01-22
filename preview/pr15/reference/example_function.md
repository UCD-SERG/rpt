# Example Function with Mathematical Notation

This is an example function that demonstrates basic functionality and
various ways to include mathematical notation in roxygen2 documentation.

## Usage

``` r
example_function(x)
```

## Arguments

- x:

  A numeric vector

## Value

The median of the input vector

## Mathematical Notation in roxygen2

### Using `\eqn{}` for inline math (works in all formats)

The median is a measure of central tendency where \\x\_{0.5}\\
represents the value that splits the data in half.

### Using `\deqn{}` for display equations (works in all formats)

The sample median for odd \\n\\ is defined as: \$\$m = x\_{(n+1)/2}\$\$

### Using `$$` for display math (HTML/pkgdown only, requires roxygen2 \>= 7.0.0)

For even sample sizes, the median is the average of the two middle
values: \$\$m = x\_(n/2) + x\_(n/2+1)2\$\$

### Using `$` for inline math (HTML/pkgdown only, requires roxygen2 \>= 7.0.0)

In general, the median minimizes \$\_i=1^n \|x_i - m\|\$.

## Examples

``` r
example_function(c(1, 2, 3, 4, 5))
#> [1] 3
```
