# symmetry
<P>
This repository contains a C program for brute-force determination of molecular symmetry,
exact or approximate.

<P>
The idea of the algorithm is very simple: the list of the symmetry operations in each point
group is unique. The code attemps to locate all symmetry operations, and then compares the 
list to the tabulated list of point groups. As the result, the algorithm is very robust to
small deviations from the exact symmetry, and does not get confused by high-symmetry groups.
The downside of this approach is that symmetry analysis is quite expensive, and scales 
somewhat worse than quadratically with the number of atoms.

<P>
The following point groups are currently known to the code: 
C<sub>1</sub>, C<sub>s</sub>, C<sub>i</sub>, C<sub>2</sub>, C<sub>3</sub>, C<sub>4</sub>,
C<sub>5</sub>, C<sub>6</sub>, C<sub>7</sub>, C<sub>8</sub>, D<sub>2</sub>, D<sub>3</sub>,
D<sub>4</sub>, D<sub>5</sub>, D<sub>6</sub>, D<sub>7</sub>, D<sub>8</sub>, C<sub>2v</sub>,
C<sub>3v</sub>, C<sub>4v</sub>, C<sub>5v</sub>, C<sub>6v</sub>, C<sub>7v</sub>, C<sub>8v</sub>,
C<sub>2h</sub>, C<sub>3h</sub>, C<sub>4h</sub>, C<sub>5h</sub>, C<sub>6h</sub>, C<sub>7h</sub>,
C<sub>8h</sub>, D<sub>2h</sub>, D<sub>3h</sub>, D<sub>4h</sub>, D<sub>5h</sub>, D<sub>6h</sub>,
D<sub>7h</sub>, D<sub>8h</sub>, D<sub>2d</sub>, D<sub>3d</sub>, D<sub>4d</sub>, D<sub>5d</sub>,
D<sub>6d</sub>, D<sub>7d</sub>, D<sub>8d</sub>, S<sub>4</sub>, S<sub>6</sub>, S<sub>8</sub>,
T, T<sub>h</sub>, T<sub>d</sub>, O, O<sub>h</sub>, C<sub>∞v</sub>,
D<sub>∞h</sub>, I, I<sub>h</sub>, K<sub>h</sub>. The program will still be able to
generate the lists of symmetry operations for other point groups, but won't be
able to name them. In the latter case, please open the issue at 
<a href="https://github.com/MBI-Theory/symmetry">https://github.com/MBI-Theory/symmetry</a>,
making sure to include the complete input for inclusion in the test set.
  
<p>
To compile the code and run the test test, type "make" in the top-level directory. The are 
no pre-requisites or dependencies beyond a working C compiler and basic Unix utilities (make,
grep, awk, sed, basename). In order to get version strings updated in the code, it may be
necessary to execute the commands:
<pre>
git config --add 'filter.keywords.clean' '.filters/keywords.clean'
git config --add 'filter.keywords.smudge' '.filters/keywords.smudge %f'
rm symmetry.c
git checkout symmetry.c
</pre>
after cloning the repository.
  
<p>
The following options are recognised by the code (default values in parentheses):
<pre>
  -verbose      (    0) Determines verbosity level
                        All values above 0 are intended for debugging purposes
  -maxaxisorder (   20) Maximum order of rotation axis to look for
  -maxoptcycles (  200) Maximum allowed number of cycles in symmetry element optimization 
  --                    Terminates option processing 
  -same         ( 1e-3) Atoms are colliding if distance falls below this value
  -primary      ( 0.05) Initial loose criterion for atom equivalence
  -final        ( 1e-4) Final criterion for atom equivalence
  -maxoptstep   (  0.5) Largest step allowed in symmetry element optimization
  -minoptstep   ( 1e-7) Termination criterion in symmetry element optimization
  -gradstep     ( 1e-7) Finite step used in numeric gradient evaluation
  -minchange    (1e-10) Minimum allowed change in target function
  -minchgcycles (    5) Number of minchange cycles before optimization stops
</pre>

<p>
In addition to the options, at most one file can be specified on the command line.
The file is expected to contain structure input in the following format:
<pre>
Line 1: number-of-atoms
Line 2: atomic-number X Y Z
Line 3: ...
</pre>
Examples of the input format can be found in the tests/ subdirectory. If no input
file is specified, the structure will be read from the standard input.
 
<p> <p>
Prior to January 25, 2000 (v. 1.15 of the original RCS repositiory), the code contained 
a bug in the logic used to recognize odd-order improper axes. The bug was found by 
Dr. Thomas Sommerfeld (University if Heidelberg), who is gratefully acknowledged.
