FROM gitpod/workspace-full

RUN apt-get -q update

# Install LaTeX
RUN apt-get install -yq texlive-full perl libterm-readline-gnu-perl

# Install SWI-Prolog
RUN apt-add-repository ppa:swi-prolog/stable && apt-get update && apt-get install -yq swi-prolog

RUN rm -rf /var/lib/apt/lists/*
