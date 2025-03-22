#!/bin/bash

# LaTeX
sudo pacman -S texlive-fontsextra texlive-core texlive-bin texlive-bibtexextra texlive-formatsextra texlive-games texlive-humanities texlive-langcyrillic texlive-langextra texlive-langgreek texlive-latexextra texlive-music texlive-pictures texlive-pstricks texlive-publishers texlive-science kbibtex #texmaker gnome-latex kbibtex 
sudo pacman -S texlive-xetex texlive-meta texlive-langenglish texlive-langspanish texlive-fontutils texlive-binextra texlive-context texlive-fontutils

# Programming
sudo pacman -S geogebra wine octave julia r gambas3-ide jupyterlab jupyter-notebook git xournalpp pandoc asciidoctor gcc-fortran # xf86-input-wacom code

# Science
sudo pacman -S python-scikit-learn python-scikit-hep-testdata python-scikit-build python-prettytable python-sympy
sudo pacman -S gnuplot gnuplot-demos

# LAMP
sudo pacman -S apache php php-apache phpmyadmin mariadb
