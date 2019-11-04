import pandas as pd
import csv

bio=pd.readcsv(”biocopy.csv”)
biodf=pd.DataFrame(bio)

#creatingseries
bioseries=pd.Series(biodf[’CommonName’].values,index=biodf[’County’].values)

#gettinguniquevaluesofanimalsandcounties
animals=sorted(biodf[’CommonName’].unique())
counties=sorted(biodf[’County’].unique())

#creatingamatrix
n=len(animals)
m=len(counties)
finalmatrix=[0]∗n
for i in range(n):
    finalmatrix[i]=[0]∗m

#finalmatrixisalistofuniqueanimalsbyalistofuniquecounties
for county,animal in bioseries.iteritems():
    if county in counties and animal in animals:
        animalindex=animals.index(animal)
        countyindex=counties.index(county)
        finalmatrix[animalindex][countyindex]=1
print(finalmatrix)

with open(”binarymatrix.csv”,”w”)asf:
    writer=csv.writer(f)
    writer.writerows(finalmatrix)
