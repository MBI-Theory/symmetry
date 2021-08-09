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
       "C1,
    {  "Cs,
    {  "Ci,
    {  "C2,
    {  "C3,
    {  "C4",    "(C4) (C2) ",                                                true  },
    {  "C5",    "(C5) ",                                                     true  },
    {  "C6",    "(C6) (C3) (C2) ",                                           true  },
    {  "C7",    "(C7) ",                                                     true  },
    {  "C8",    "(C8) (C4) (C2) ",                                           true  },
    {  "D2",    "3*(C2) ",                                                   true  },
    {  "D3",    "(C3) 3*(C2) ",                                              true  },
    {  "D4",    "(C4) 5*(C2) ",                                              true  },
    {  "D5",    "(C5) 5*(C2) ",                                              true  },
    {  "D6",    "(C6) (C3) 7*(C2) ",                                         true  },
    {  "D7",    "(C7) 7*(C2) ",                                              true  },
    {  "D8",    "(C8) (C4) 9*(C2) ",                                         true  },
    {  "C2v",   "(C2) 2*(sigma) ",                                           true  },
    {  "C3v",   "(C3) 3*(sigma) ",                                           true  },
    {  "C4v",   "(C4) (C2) 4*(sigma) ",                                      true  },
    {  "C5v",   "(C5) 5*(sigma) ",                                           true  },
    {  "C6v",   "(C6) (C3) (C2) 6*(sigma) ",                                 true  },
    {  "C7v",   "(C7) 7*(sigma) ",                                           true  },
    {  "C8v",   "(C8) (C4) (C2) 8*(sigma) ",                                 true  },
    {  "C2h",   "(i) (C2) (sigma) ",                                         true  },
    {  "C3h",   "(C3) (S3) (sigma) ",                                        true  },
    {  "C4h",   "(i) (C4) (C2) (S4) (sigma) ",                               true  },
    {  "C5h",   "(C5) (S5) (sigma) ",                                        true  },
    {  "C6h",   "(i) (C6) (C3) (C2) (S6) (S3) (sigma) ",                     true  },
    {  "C7h",   "(C7) (S7) (sigma) ",                                        true  },
    {  "C8h",   "(i) (C8) (C4) (C2) (S8) (S4) (sigma) ",                     true  },
    {  "D2h",   "(i) 3*(C2) 3*(sigma) ",                                     true  },
    {  "D3h",   "(C3) 3*(C2) (S3) 4*(sigma) ",                               true  },
    {  "D4h",   "(i) (C4) 5*(C2) (S4) 5*(sigma) ",                           true  },
    {  "D5h",   "(C5) 5*(C2) (S5) 6*(sigma) ",                               true  },
    {  "D6h",   "(i) (C6) (C3) 7*(C2) (S6) (S3) 7*(sigma) ",                 true  },
    {  "D7h",   "(C7) 7*(C2) (S7) 8*(sigma) ",                               true  },
    {  "D8h",   "(i) (C8) (C4) 9*(C2) (S8) (S4) 9*(sigma) ",                 true  },
    {  "D2d",   "3*(C2) (S4) 2*(sigma) ",                                    true  },
    {  "D3d",   "(i) (C3) 3*(C2) (S6) 3*(sigma) ",                           true  },
    {  "D4d",   "(C4) 5*(C2) (S8) 4*(sigma) ",                               true  },
    {  "D5d",   "(i) (C5) 5*(C2) (S10) 5*(sigma) ",                          true  },
    {  "D6d",   "(C6) (C3) 7*(C2) (S12) (S4) 6*(sigma) ",                    true  },
    {  "D7d",   "(i) (C7) 7*(C2) (S14) 7*(sigma) ",                          true  },
    {  "D8d",   "(C8) (C4) 9*(C2) (S16) 8*(sigma) ",                         true  },
    {  "S4",    "(C2) (S4) ",                                                true  },
    {  "S6",    "(i) (C3) (S6) ",                                            true  },
    {  "S8",    "(C4) (C2) (S8) ",                                           true  },
    {  "T",     "4*(C3) 3*(C2) ",                                            true  },
    {  "Th",    "(i) 4*(C3) 3*(C2) 4*(S6) 3*(sigma) ",                       true  },
    {  "Td",    "4*(C3) 3*(C2) 3*(S4) 6*(sigma) ",                           true  },
    {  "O",     "3*(C4) 4*(C3) 9*(C2) ",                                     true  },
    {  "Oh",    "(i) 3*(C4) 4*(C3) 9*(C2) 4*(S6) 3*(S4) 9*(sigma) ",         true  },
    {  "Cinfv", "(Cinf) (sigma) ",                                           true  },
    {  "Dinfh", "(i) (Cinf) (C2) 2*(sigma) ",                                true  },
    {  "I",     "6*(C5) 10*(C3) 15*(C2) ",                                   true  },
    {  "Ih",    "(i) 6*(C5) 10*(C3) 15*(C2) 6*(S10) 10*(S6) 15*(sigma) ",    true  },
    {  "Kh",    "(i) (Cinf) (sigma) ",                                       true  },

  
<p> 
Prior to January 25, 2000 (v. 1.15 of the original RCS repositiory), the code contained 
a bug in the logic used to recognize odd-order improper axes. The bug was found by 
Dr. Thomas Sommerfeld (University if Heidelberg), who is gratefully acknowledged.
