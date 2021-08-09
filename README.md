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
C</sub>1</sub>, C</sub>s</sub>, C</sub>i</sub>, C</sub>2</sub>, C</sub>3</sub>, C</sub>4</sub>,
C</sub>5</sub>, C</sub>6</sub>, C</sub>7</sub>, C</sub>8</sub>, D</sub>2</sub>, D</sub>3</sub>,
D</sub>4</sub>, D</sub>5</sub>, D</sub>6</sub>, D</sub>7</sub>, D</sub>8</sub>, C</sub>2v</sub>,
C</sub>3v</sub>, C</sub>4v</sub>, C</sub>5v</sub>, C</sub>6v</sub>, C</sub>7v</sub>, C</sub>8v</sub>,
C</sub>2h</sub>, C</sub>3h</sub>, C</sub>4h</sub>, C</sub>5h</sub>, C</sub>6h</sub>, C</sub>7h</sub>,
C</sub>8h</sub>, D</sub>2h</sub>, D</sub>3h</sub>, D</sub>4h</sub>, D</sub>5h</sub>, D</sub>6h</sub>,
D</sub>7h</sub>, D</sub>8h</sub>, D</sub>2d</sub>, D</sub>3d</sub>, D</sub>4d</sub>, D</sub>5d</sub>,
D</sub>6d</sub>, D</sub>7d</sub>, D</sub>8d</sub>, S</sub>4</sub>, S</sub>6</sub>, S</sub>8</sub>,
T, T</sub>h</sub>, T</sub>d</sub></sub>, O</sub>, O</sub>h</sub>, C</sub>∞v</sub>,
D</sub>∞h</sub>, I, I</sub>h</sub>, K</sub>h</sub>.
  
<p> 
Prior to January 25, 2000 (v. 1.15 of the original RCS repositiory), the code contained 
a bug in the logic used to recognize odd-order improper axes. The bug was found by 
Dr. Thomas Sommerfeld (University if Heidelberg), who is gratefully acknowledged.
