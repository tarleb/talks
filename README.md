Talk on functional programming with PHP
=======================================

This gives a very brief overview of functional programming with PHP. The slides
are prepared using [Emacs org-mode] and can be converted to different
presentation formats via [pandoc].


Usage
-----

Built and open the HTML-version of the talk by running

    make start

in the project's root directory. This will convert the talk from Emacs org-mode
format into a [reveal.js] presentation and open it in your default browser. The
programs `git`, `xelatex`, and `pandoc`, must be install on your system for this
to work.

If your OS doesn't support the `sensible-browser` command, run `make talk.html`
and open the resulting file with the browser of your choice.

Other files that can be created by running `make FILENAME`:

talk.pdf:

:   PDF version of the talk, created via [LaTeX beamer].  Does not include
    speaker notes.

talk-notes.pdf

:   Combination of slides and speaker notes.

talk-handout.pdf

:   Print-version of the talk, includes speaker notes.


[Emacs org-mode]: https://orgmode.org/
[reveal.js]: http://lab.hakim.se/reveal-js/
[LaTeX beamer]: https://bitbucket.org/rivanvx/beamer/wiki/Home


License
-------

Copyright (c) 2017 Albert Krewinkel

This talk is available under the [Creative Commons Attribution 4.0 International] license.

[Creative Commons Attribution 4.0 International]: https://creativecommons.org/licenses/by/4.0/
