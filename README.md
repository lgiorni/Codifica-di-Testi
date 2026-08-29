# Codifica-di-Testi
Progetto e esercizi del corso Codifica di Testi, a.a. 25/26.

# Saxon
java -jar saxon.jar -s:Farfalla_1877_3_5_Bibliografia.xml -xsl:stile_coverless.xsl -o:index.html

# Xerces
java -cp "xercesImpl.jar:xercesSamples.jar" sax.Counter -v *.xml

Risultato: 
coverlessListOrganization.xml: 305 ms (66 elems, 97 attrs, 523 spaces, 1773 chars)
coverlessListPerson.xml: 133 ms (177 elems, 274 attrs, 749 spaces, 4408 chars)
coverlessListPlace.xml: 69 ms (83 elems, 126 attrs, 1456 spaces, 1765 chars)
coverlessListWork.xml: 42 ms (94 elems, 100 attrs, 830 spaces, 1990 chars)
coverlessTassonomia.xml: 54 ms (68 elems, 56 attrs, 524 spaces, 1836 chars)
Farfalla_1877_3_11_Lartenelvero.xml: 49 ms (273 elems, 401 attrs, 3289 spaces, 4464 chars)
Farfalla_1877_3_5_Bibliografia.xml: 41 ms (209 elems, 292 attrs, 2197 spaces, 3679 chars)
Farfalla_1877_4_5_Farfallitebibliografica.xml: 37 ms (176 elems, 307 attrs, 2037 spaces, 3940 chars)
