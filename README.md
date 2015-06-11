## Build Requirements

### Mac OS

The paper is guaranteed to build with [MacTeX](https://tug.org/mactex/) and
`latexmk` from [Homebrew](http://brew.sh/). Once you have homebrew, get
`latexmk` using the following command.

```bash
brew install latexmk
```

### Fedora

This command installs everything needed (and possibly more) on Fedora.

```bash
sudo yum install -y latexmk make texlive-collection-genericextra \
    texlive-collection-latex texlive-collection-pstricks \
    texlive-collection-mathextra texlive-collection-publishers \
    texlive-collection-science
```
