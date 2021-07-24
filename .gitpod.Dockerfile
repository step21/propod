FROM gitpod/workspace-full

RUN sudo apt-get -q update
RUN sudo apt-get install -yq software-properties-common
# Install LaTeX
RUN sudo apt-get install -yq texlive-full perl libterm-readline-gnu-perl

# Install SWI-Prolog
RUN sudo apt-add-repository ppa:swi-prolog/stable && apt-get update && apt-get install -yq swi-prolog

RUN sudo rm -rf /var/lib/apt/lists/*
