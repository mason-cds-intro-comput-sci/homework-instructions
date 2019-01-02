CDS 101 homework instructions
=============================

Overview
--------

These are the R Markdown source files for the instructions for all CDS 101 homework assignments.

Prerequisites
-------------

The following software and R packages are required if you want to render the R Markdown documents as a GitHub-flavored Markdown file.

### Software

*   [R][r-lang-url] (>=3.5)

*   [RStudio][rstudio-url] (>=1.1.463), [preview release][rstudio-preview] recommended

*   (Windows) [Rtools][rtools-ucb-mirror]: match the Rtools version to the R version and perform a full install

*   (Mac) [Xcode Command Line Tools][xcode-url]: needed for compiling source code in certain R packages
    
    ```sh
    # To install Xcode Command Line Tools, open up a terminal window and run the following
    xcode-select --install
    ```
    
*   (Optional) [git][git-download-page]: needed to clone the repository as a new project in RStudio

### R packages

    fs         (>= 1.2.6)
    infer      (>= 0.4.0)
    tidyverse  (>= 1.2.1)

See [Install](#install) for an easy way to install the above R packages.

Install
-------

Obtain a copy of this repo either by [cloning it as a new RStudio project][rstudio-git-explainer] or by downloading the zip archive.
Activate the project by clicking the file [`homework-instructions.Rproj`](homework-instructions.Rproj) in the RStudio file browser.
Then, in an R console, type the following to install the necessary R packages:

```r
install.packages("remotes", repos = "https://cran.rstudio.com")
remotes::install_deps()
```

Usage
-----
    
The provided [Makefile](Makefile) can be run within RStudio and contains rules for automatically knitting the homework instructions into PDF and GitHub-compatible markdown files.
To run the Makefile, use the keyboard shortcut <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>B</kbd> or click the **Build** tab in the upper-right window and then click the *Build All* button.
The knitted instructions will be saved in a folder called `build/`, and the GitHub-compatible markdown files can be used as the `README.md` file in the starter-file repositories you distribute to students.

License
-------

[![Creative Commons License][cc-by-sa-4-img]][cc-by-sa-4]

Unless otherwise noted, these materials are licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa-4].

[xcode-url]:                https://developer.apple.com/downloads/more
[cc-by-sa-4]:               http://creativecommons.org/licenses/by-sa/4.0/
[r-lang-url]:               https://www.r-project.org/
[rstudio-url]:              https://www.rstudio.com/products/rstudio/download/#download
[cc-by-sa-4-img]:           https://i.creativecommons.org/l/by-sa/4.0/88x31.png
[chrome-download]:          https://www.google.com/chrome/
[rstudio-preview]:          https://www.rstudio.com/products/rstudio/download/preview/
[git-download-page]:        https://git-scm.com/download
[rtools-ucb-mirror]:        https://cran.cnr.berkeley.edu/bin/windows/Rtools/
[rstudio-git-explainer]:    http://happygitwithr.com/rstudio-git-github.html#clone-the-new-github-repository-to-your-computer-via-rstudio
