# [Anglican chant](https://en.wikipedia.org/wiki/Anglican_chant) template

A template for typesetting psalms using [LaTeX](https://www.latex-project.org), [LilyPond](http://lilypond.org) and [GNU Make](https://www.gnu.org/software/make/). For an example, see the `psalm.pdf` file.

## Files

| File | Purpose |
| :--- | :--- |
| `psalm.ltx` | the LaTeX file containing the text |
| `psalm.sty` | the LaTeX style file which defines various things |
| `chant.ly` | the LilyPond file for the chant |
| `Makefile` | defines how to build the final PDF from each component |
| `chant.png` | the image file for the chant, created automatically by `make` |
| `psalm.pdf` | the final PDF file, created automatically by `make` |

## Example usage

1. Edit `psalm.ltx` appropriately, referring to the original `psalm.ltx` file for the commands to use (e.g. `\bl` for bar line)

1. Edit `chant.ly` appropriately

1. Run `make` to create `psalm.pdf`

## Tweaking things

You can define various spacing variables using `\setlength` or commands using `\renewcommand` within your `psalm.ltx` file. See `psalm.sty` for the default definitions.
