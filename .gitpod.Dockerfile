FROM gitpod/workspace-full

RUN sudo apt-get -q update

# Install LaTeX
RUN sudo apt-get install -yq texlive-full perl libterm-readline-gnu-perl

# Install SWI-Prolog
RUN sudo apt-add-repository ppa:swi-prolog/stable && apt-get update && apt-get install -yq swi-prolog

RUN sudo rm -rf /var/lib/apt/lists/*
