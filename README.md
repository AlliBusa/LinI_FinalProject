# Linearity I Final Project
During Spring 2018, I took Linearity I, a math class focused on Linear Algebra.

My teammate and I explored Principal Component Analysis (PCA), and wanted to use the tool to determine the relationship between biodiversity and human population in a region. In order to do this, we
applied it to datasets of number of electric cars, biodiversity, and population in NY counties.

The datasets can be found below.

The final paper can be found on [Overleaf](https://www.overleaf.com/read/nvpjszmyhkjp).

## Dataset
The datasets of biodiversity, total cars, and __ can be found at these three locations, respectively:
[NY Government Data on Biodiversity](https://data.ny.gov/Energy-Environment/Biodiversity-by-County-Distribution-of-biodiversity-Pla/tk82-7km5/data), [LoHub Electric Vehicle Database](http://lohud.nydatabases.com/database/number-electric-vehicles-new-york), and [Empire Center Population Database](https://www.empirecenter.org/publications/population-new-york-and-u-s-nys-counties/).

## Using the scripts
The following script will put the biodiversity data into the right format.
```console
python extractingdata.py
```
Then, running the analysis.m script in MATLAB will give the results of PCA and display a graph.

## Accompanying Video
Here is the Youtube video explaining PCA, which was our other deliverable: [Link to Video](https://www.youtube.com/watch?v=5HNr_j6LmPc)
