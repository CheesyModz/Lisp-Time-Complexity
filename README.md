# What does the program do
Compares time complexity of elt and my-elt for list and linked lists.

To test your own complexity of others change line 58 and line 60 in `timing-graph-frwrk.lisp`

Example:

Change 

`(:+ acc1 (timef (elt x elem)))`

`(:+ acc2 (timef (my-elt y elem)))))`

to

`(:+ acc1 (timef (bin-search elem  x)))`

`(:+ acc2 (timef (bin-search (- elem)  x)))))`

# How to use
1. Download Lisp
2. Download the programs above
3. Run `timing-graph-frwrk.lisp`
4. Go to https://sourceforge.net/projects/gnuplot/files/gnuplot/5.4.2/
5. Download `gp542-win64-mingw.exe`
6. Open gnuplot
7. cd into the directory of output.dat
8. Type `plot 'output.dat' using 1:2 with lines title 'aref', '' using 1:3 with lines title 'find'`

# Output
Elt Time complexity of elements in the list and not in the list
![efficiency-plot-elt](https://user-images.githubusercontent.com/49135331/142468430-77b90a3d-181e-4f14-b8f1-7310e9ac8bed.png) 
![efficiency-plot-my-elt](https://user-images.githubusercontent.com/49135331/142468418-4eb3c5e3-4307-4936-bd01-ecc077053b27.png)

Binary Search Time Complexity of elements in the list and not in the list
![efficiency-analysis-1](https://user-images.githubusercontent.com/49135331/142468584-879897c1-c66d-4879-80e8-5fdfe5bb7055.png)
![efficiency-analysis-2](https://user-images.githubusercontent.com/49135331/142468610-5af284f1-8e4b-4f6e-94eb-3e860631ac66.png)

# Contact - For issues/support
Email: Garyhuang325@gmail.com

Discord: @ƙag ItsCheeseModz#1997
