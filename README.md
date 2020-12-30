# README

## First step

1. Start GitPod (login to GitLab.com is required)
   - <https://gitpod.io/#https://gitlab.com/cspsat/seqprover-gitpod>
2. In the GitPod terminal window, type:
   ```
   ./prover -o pdf example.txt
   ```
3. Open [main.pdf](main.pdf) file.

## How to use

The `./prover` command will prompt you to enter a sequent or a formula to be proved.

```
$ ./prover
Welcome to SWI-Prolog (threaded, 64 bits, version 7.6.4)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit http://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

# Proving [a]-->[a]
Trying to prove with threshold = 0

# BEGIN Proof
------- Ax
a --> a

# END Proof

# Proved in 0 msec.

Enter a sequent: Ctrl-d
```

If you prepare an input file (e.g. [example.txt](example.txt)),
it can be given as an input.
```
$ ./prover example.txt
Welcome to SWI-Prolog (threaded, 64 bits, version 7.6.4)
...(snip)...
# BEGIN Proof
------- Ax
p --> p
----------- Ltop
p,top --> p
------------ L/\
p/\top --> p

# END Proof
...(snip)...
# BEGIN Proof
                       ----------------------------------------------------- Ax  -------------------------------------------------------- Ax
                       n(0),n(s(0)),X@(n(X)->n(s(X))) --> n(s(0)),n(s(s(0)))     n(0),n(s(0)),n(s(s(0))),X@(n(X)->n(s(X))) --> n(s(s(0)))
                       ------------------------------------------------------------------------------------------------------------------ L->
                                               n(0),n(s(0)),n(s(0))->n(s(s(0))),X@(n(X)->n(s(X))) --> n(s(s(0)))
------------------------------------------ Ax  ----------------------------------------------------------------- L@
n(0),X@(n(X)->n(s(X))) --> n(0),n(s(s(0)))               n(0),n(s(0)),X@(n(X)->n(s(X))) --> n(s(s(0)))
------------------------------------------------------------------------------------------------------ L->
                         n(0),n(0)->n(s(0)),X@(n(X)->n(s(X))) --> n(s(s(0)))
                         --------------------------------------------------- L@
                                n(0),X@(n(X)->n(s(X))) --> n(s(s(0)))

# END Proof

# Proved in 4 msec.
```

When you specify the `-o pdf` option, PDF file named `main.pdf` will be generated.
```
$ ./prover -o pdf example.txt
```

## Links

- <https://cspsat.gitlab.io/seqprover/>
- <https://cspsat.gitlab.io/llprover/>
    - <https://gitlab.com/cspsat/llprover-gitpod/>
- <https://gitpod.io/>
