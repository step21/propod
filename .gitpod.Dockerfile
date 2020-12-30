FROM gitpod/workspace-full

RUN sudo apt-get -q update

# Install Perl
RUN sudo apt-get install -yq perl libterm-readline-gnu-perl

# Install SWI-Prolog
RUN sudo apt-get install -yq swi-prolog

# Install LaTeX
RUN sudo apt-get install -yq texlive-full

RUN sudo rm -rf /var/lib/apt/lists/*
