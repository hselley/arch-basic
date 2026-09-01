#!/bin/bash

# LaTeX
sudo pacman -S texlive-fontsextra texlive-core texlive-bin texlive-bibtexextra texlive-formatsextra texlive-games texlive-humanities texlive-langcyrillic texlive-langextra texlive-langgreek texlive-latexextra texlive-music texlive-pictures texlive-pstricks texlive-publishers texlive-science kbibtex #texmaker gnome-latex kbibtex
sudo pacman -S texlive-xetex texlive-meta texlive-langenglish texlive-langspanish texlive-fontutils texlive-binextra texlive-context texlive-fontutils

# Programming
sudo pacman -S geogebra wine octave julia r gambas3-ide jupyterlab jupyter-notebook git xournalpp pandoc asciidoctor gcc-fortran code # xf86-input-wacom
sudo pacman -S pkg-config make

# Science
sudo pacman -S python-scikit-learn python-scikit-build python-prettytable python-sympy python-pandas python-matplotlib python-toolz
sudo pacman -S gnuplot gnuplot-demos libqalculate qalculate-gtk

# LAMP
sudo pacman -S apache php php-apache phpmyadmin mariadb

# IA
sudo pacman -S ollama ollama-docs ollama-cuda llm-manager opencode
sudo systemctl enable --now ollama

# Docker
sudo pacman -S docker docker-compose ducker
sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service

# Typst
sudo pacman -S typst typstyle
