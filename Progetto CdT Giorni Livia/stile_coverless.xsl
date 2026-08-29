<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
                <script type="text/javascript" src="script.js"></script>
                <title>Edizione Digitale COVerLeSS - La Farfalla</title>
                <link rel="shortcut icon" type="image/png" href="logo_COVerLeSS.png" />
                <link rel="icon" type="image/png" href="logo_COVerLeSS.png" />
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <header>
                    <nav class="nav-principale">
                        <a href="#progetto" class="logo" title="Scopri il progetto COVerLeSS">
                            COVer<span>LeSS</span>
                        </a>
                        <a href="#rivista" class="titolo-rivista" title="Info sulla rivista">
                            <xsl:text>Edizione Digitale - La Farfalla</xsl:text>
                        </a>
                        <ul class="link-navigazione">
                            <li><a href="#mappa">Mappa</a></li>
                            <li><a href="#farfallite">Farfallite</a></li>
                            <li><a href="#arte">L'Arte nel Vero</a></li>
                            <li><a href="#bibliografia">Bibliografia</a></li>
                        </ul>
                    </nav>
                </header>

                <div id="modale-facsimile" class="modale">
                    <div class="contenuto-modale testo-centrato">
                        <span class="chiudi">&#215;</span>
                        <h3 class="titolo-modale-piccolo">Immagine originale</h3>
                        <img id="img-modale-target" class="img-modale" src="" alt="Facsimile Ingrandito"/>
                        <p id="fonte-modale-target" class="fonte-modale">Fonte: La Farfalla</p>
                    </div>
                </div>

                <main>
                    <section id="rivista" class="sezione-intro">
                        <div class="pannello-intro in-evidenza layout-rivista">
                            <div class="colonna-img-rivista">
                                <img class="copertina-rivista-intro" src="copertina_farfalla.tif" alt="Copertina La Farfalla" title="Clicca per ingrandire a tutto schermo"/>
                            </div>
                            <div class="colonna-testo-rivista">
                                <h2 class="titolo-rivista-intro" style="text-align: left;">La Farfalla</h2>
                                <p>Fondata a Cagliari da Angelo Sommaruga, «La Farfalla» vide la luce il 27 febbraio 1876. Si presentava al pubblico «semplice, pulita, senza fregi». Tra i maggiori collaboratori: Giarelli, Bacaredda, Cameroni e Valera. Nel 1877 si trasferì a Milano con una nuova testata liberty disegnata da Tranquillo Cremona.</p>
                                <hr class="divisore-rivista-intro"/>
                                <ul class="lista-rivista-intro">
                                    <li><strong>Attività:</strong> 1876 – 1883</li>
                                    <li><strong>Numeri:</strong> 14 uscite regolari</li>
                                    <li><strong>Prezzo:</strong> 10 Centesimi</li>
                                </ul>
                            </div>
                        </div>
                    </section>

                    <section id="progetto" class="sezione-intro">
                        <div class="pannello-intro secondario">
                            <h2 class="titolo-progetto-intro">Il Progetto COVerLeSS</h2>
                            <h3 class="sottotitolo-progetto-intro">Corpus Online del Verismo tra Letteratura, Storia e Società</h3>
                            <p><strong>COVerLeSS</strong> è un ambiente web integrato e open access dedicato alla ricezione contemporanea della letteratura del Verismo italiano (dalle novelle di <em>Vita dei campi</em> al <em>Mastro-don Gesualdo</em>). La forte impronta storico-sociale di questo movimento si è riflessa in un ricchissimo pullulare di recensioni, polemiche e saggi.</p>
                            <p>Questo materiale è stato riunito in un corpus che offre la possibilità di <strong>interrogazioni strutturate</strong> e <strong>percorsi didattici</strong>. COVerLeSS mette a disposizione strumenti capaci di fare luce sui rapporti tra dibattito politico-sociale, le problematiche dell'Italia unita e la letteratura verista.</p>
                            <p style="margin-bottom: 5px;">Il corpus riunisce:</p>
                            <ul class="lista-rivista-intro" style="margin-bottom: 15px;">
                                <li>Recensioni contemporanee;</li>
                                <li>Periodici di taglio 'monografico';</li>
                                <li>Saggi teorici.</li>
                            </ul>
                            <p>L’utente può individuare parole-chiave, espressioni ricorrenti e fraseologie caratterizzanti, usufruendo di un vero e proprio <strong>dizionario ‘teorico-pratico’</strong>.</p>
                        </div>
                    </section>

                    <hr class="divisore-sezione"/>

                    <section id="mappa" class="sezione-intro">
                        <div class="legenda">
                            <strong class="titolo-legenda">Mappa interattiva: clicca sui pulsanti per evidenziare nel testo i termini relativi al campo semantico corrispondente</strong>
                            <button class="voce-legenda termine-vero" data-evidenzia="termine-vero">Vero/verità</button>
                            <button class="voce-legenda termine-arti" data-evidenzia="termine-arti">Arti visive</button>
                            <button class="voce-legenda termine-rapp" data-evidenzia="termine-rapp">Rappresentazione</button>
                            <button class="voce-legenda termine-emarg" data-evidenzia="termine-emarg">Emarginazione</button>
                            <button class="voce-legenda termine-ismi" data-evidenzia="termine-ismi">Ismi</button>
                            <button class="voce-legenda termine-oss" data-evidenzia="termine-oss">Osservazione</button>
                            <button class="voce-legenda termine-gen" data-evidenzia="termine-gen">Genere letterario</button>
                            <button class="voce-legenda termine-aut" data-evidenzia="termine-aut">Forma</button>
                            <button class="voce-legenda termine-nar" data-evidenzia="termine-nar">Narrazione</button>
                            <button class="voce-legenda persona" data-evidenzia="persona">Persone</button>
                            <button class="voce-legenda opera" data-evidenzia="opera">Opere</button>
                            <button class="voce-legenda luogo" data-evidenzia="luogo">Luoghi</button>
                            <div class="contenitore-pulsanti-editoriali">
                                <div class="istruzioni-legenda">
                                    <strong>Istruzioni:</strong><br/>
                                    <em>Tramite i pulsanti sottostanti è possibile interagire ulteriormente con il testo. <br/>Il pulsante "Scioglimento" mostra le parole troncate. <br/>Il pulsante "Ortografia moderna" permette di confrontare la grafia ottocentesca. <br/>Il pulsante "Traduzione" chiarisce i termini arcaici. <br/>Il pulsante "Note filologiche" svela le note al testo.</em>
                                </div>
                                <button id="alterna-abbr" class="voce-legenda pulsante-editoriale">Scioglimento</button>
                                <button id="alterna-orto" class="voce-legenda pulsante-editoriale">Ortografia moderna</button>
                                <button id="alterna-trad" class="voce-legenda pulsante-editoriale">Traduzione</button>
                                <button id="alterna-glossa" class="voce-legenda pulsante-editoriale">Note filologiche</button>
                            </div>
                        </div>
                    </section>

                    <hr class="divisore-sezione"/>

                    <!-- farfallite bibliografica -->
                    <xsl:for-each select="document('Farfalla_1877_4_5_Farfallitebibliografica.xml')/tei:TEI">
                        <xsl:element name="section">
                            <xsl:attribute name="id">farfallite</xsl:attribute>
                            
                            <xsl:element name="h1">
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                            </xsl:element>
                            
                            <div class="dati-meta">
                                <strong>Autore: </strong>
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listBibl/tei:biblStruct/tei:analytic/tei:author"/>
                                <xsl:text> | </xsl:text>
                                <strong>Rivista: </strong>
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listBibl/tei:biblStruct/tei:monogr/tei:title[@level='j']"/>
                            </div>

                            <div class="contenitore-didattico">
                                <div class="pannello-info">
                                    <div class="dettagli-meta">
                                        <strong class="titolo-meta">Dettagli della codifica:</strong>
                                        <ul>
                                            <li>
                                                <b>Codificatore: </b>
                                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name"/>
                                            </li>
                                        </ul>
                                    </div>
                                    <xsl:for-each select=".//tei:facsimile/tei:surface/tei:graphic">
                                        <div class="contenitore-facs">
                                            <h3 class="titolo-facs">Immagine originale</h3>
                                            <xsl:element name="img">
                                                <xsl:attribute name="class">anteprima-img-facs</xsl:attribute>
                                                <xsl:attribute name="src"><xsl:value-of select="./@url"/></xsl:attribute>
                                                <xsl:attribute name="data-url"><xsl:value-of select="./@url"/></xsl:attribute>
                                                <xsl:attribute name="title">Clicca per ingrandire a tutto schermo</xsl:attribute>
                                            </xsl:element>
                                        </div>
                                    </xsl:for-each>
                                </div>
                                <div class="pannello-testo">
                                    <xsl:if test=".//tei:abstract">
                                        <div class="box-regesto">
                                            <h4>Regesto</h4>
                                            <xsl:apply-templates select=".//tei:abstract"/>
                                        </div>
                                    </xsl:if>
                                    <div class="recensione">
                                        <xsl:apply-templates select="./tei:text"/>
                                    </div>
                                </div>
                            </div>
                        </xsl:element>
                    </xsl:for-each>

                    <hr class="divisore-sezione"/>

                    <!-- arte nel vero -->
                    <xsl:for-each select="document('Farfalla_1877_3_11_Lartenelvero.xml')/tei:TEI">
                        <xsl:element name="section">
                            <xsl:attribute name="id">arte</xsl:attribute>
                            
                            <xsl:element name="h1">
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                            </xsl:element>
                            
                            <div class="dati-meta">
                                <strong>Autore: </strong>
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listBibl/tei:biblStruct/tei:analytic/tei:author"/>
                                <xsl:text> | </xsl:text>
                                <strong>Rivista: </strong>
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listBibl/tei:biblStruct/tei:monogr/tei:title[@level='j']"/>
                            </div>

                            <div class="contenitore-didattico">
                                <div class="pannello-info">
                                    <div class="dettagli-meta">
                                        <strong class="titolo-meta">Dettagli della codifica:</strong>
                                        <ul>
                                            <li>
                                                <b>Codificatore: </b>
                                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name"/>
                                            </li>
                                        </ul>
                                    </div>
                                    <xsl:for-each select=".//tei:facsimile/tei:surface/tei:graphic">
                                        <div class="contenitore-facs">
                                            <h3 class="titolo-facs">Immagine originale</h3>
                                            <xsl:element name="img">
                                                <xsl:attribute name="class">anteprima-img-facs</xsl:attribute>
                                                <xsl:attribute name="src"><xsl:value-of select="./@url"/></xsl:attribute>
                                                <xsl:attribute name="data-url"><xsl:value-of select="./@url"/></xsl:attribute>
                                                <xsl:attribute name="title">Clicca per ingrandire a tutto schermo</xsl:attribute>
                                            </xsl:element>
                                        </div>
                                    </xsl:for-each>
                                </div>
                                <div class="pannello-testo">
                                    <xsl:if test=".//tei:abstract">
                                        <div class="box-regesto">
                                            <h4>Regesto</h4>
                                            <xsl:apply-templates select=".//tei:abstract"/>
                                        </div>
                                    </xsl:if>
                                    <div class="poesia">
                                        <xsl:apply-templates select="./tei:text"/>
                                    </div>
                                </div>
                            </div>
                        </xsl:element>
                    </xsl:for-each>

                    <hr class="divisore-sezione"/>

                    <!-- bibliografia -->
                    <xsl:for-each select="document('Farfalla_1877_3_5_Bibliografia.xml')/tei:TEI">
                        <xsl:element name="section">
                            <xsl:attribute name="id">bibliografia</xsl:attribute>
                            
                            <xsl:element name="h1">
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                            </xsl:element>
                            
                            <div class="dati-meta">
                                <strong>Autore: </strong>
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listBibl/tei:biblStruct/tei:analytic/tei:author"/>
                                <xsl:text> | </xsl:text>
                                <strong>Rivista: </strong>
                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listBibl/tei:biblStruct/tei:monogr/tei:title[@level='j']"/>
                            </div>

                            <div class="contenitore-didattico">
                                <div class="pannello-info">
                                    <div class="dettagli-meta">
                                        <strong class="titolo-meta">Dettagli della codifica:</strong>
                                        <ul>
                                            <li>
                                                <b>Codificatore: </b>
                                                <xsl:value-of select="./tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name"/>
                                            </li>
                                        </ul>
                                    </div>
                                    <xsl:for-each select=".//tei:facsimile/tei:surface/tei:graphic">
                                        <div class="contenitore-facs">
                                            <h3 class="titolo-facs">Immagine originale</h3>
                                            <xsl:element name="img">
                                                <xsl:attribute name="class">anteprima-img-facs</xsl:attribute>
                                                <xsl:attribute name="src"><xsl:value-of select="./@url"/></xsl:attribute>
                                                <xsl:attribute name="data-url"><xsl:value-of select="./@url"/></xsl:attribute>
                                                <xsl:attribute name="title">Clicca per ingrandire a tutto schermo</xsl:attribute>
                                            </xsl:element>
                                        </div>
                                    </xsl:for-each>
                                </div>
                                <div class="pannello-testo">
                                    <xsl:if test=".//tei:abstract">
                                        <div class="box-regesto">
                                            <h4>Regesto</h4>
                                            <xsl:apply-templates select=".//tei:abstract"/>
                                        </div>
                                    </xsl:if>
                                    <div class="recensione">
                                        <xsl:apply-templates select="./tei:text"/>
                                    </div>
                                </div>
                            </div>
                        </xsl:element>
                    </xsl:for-each>

                </main>

                <footer>
                    <p>Progetto COVerLeSS<br/>A cura di Livia Giorni mat. 674163<br/>Progetto di Codifica di Testi a.a. 25/26</p>
                </footer>
                <div id="tooltip-fluttuante" class="tooltip-fluttuante"></div>
            </body>
        </html>
    </xsl:template>

    <!-- formattazione testuale e strutturale -->
    
    <xsl:template match="tei:div[@type='intestazione']">
        <div class="intestazione-testo"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='text'] | tei:div[@type='sottotitolo']">
        <div class="testo-corpo"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <h2 class="titolo-tei"><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="tei:metamark">
        <div class="separatore-stella"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:p | tei:abstract">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="tei:lg">
        <div class="strofa"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:l">
        <div class="verso"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:lb">
        <br/>
    </xsl:template>

    <xsl:template match="tei:listBibl">
        <xsl:element name="ul">
            <xsl:attribute name="class">lista-bibl</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:item">
        <xsl:element name="li">
            <xsl:attribute name="class">elemento-bibl</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:bibl">
        <xsl:element name="li">
            <xsl:attribute name="class">voce-bibl</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- interventi editoriali -->

    <xsl:template match="tei:choice[tei:abbr and tei:expan]">
        <xsl:element name="span">
            <xsl:attribute name="class">scelta-editoriale</xsl:attribute>
            <xsl:element name="span">
                <xsl:attribute name="class">testo-abbr</xsl:attribute>
                <xsl:attribute name="title">Forma originale abbreviata</xsl:attribute>
                <xsl:value-of select="tei:abbr"/>
            </xsl:element>
            <xsl:element name="span">
                <xsl:attribute name="class">testo-espansione</xsl:attribute>
                <xsl:attribute name="title">Scioglimento editoriale</xsl:attribute>
                <xsl:value-of select="tei:expan"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:choice[tei:orig and tei:reg and @rend='traduzione']">
        <xsl:element name="span">
            <xsl:attribute name="class">scelta-traduzione entita</xsl:attribute>
            <xsl:attribute name="data-titolo-tooltip">Italiano moderno</xsl:attribute>
            <xsl:attribute name="data-info">
                <xsl:text>Traduzione: </xsl:text><xsl:value-of select="tei:reg"/>
            </xsl:attribute>
            
            <xsl:element name="span">
                <xsl:attribute name="class">traduzione-orig</xsl:attribute>
                <xsl:value-of select="tei:orig"/>
            </xsl:element>
            <xsl:element name="span">
                <xsl:attribute name="class">traduzione-regol</xsl:attribute>
                <xsl:value-of select="tei:reg"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:choice[tei:orig and tei:reg and not(@rend='traduzione')]">
        <xsl:element name="span">
            <xsl:attribute name="class">scelta-ortografica entita</xsl:attribute>
            <xsl:attribute name="data-titolo-tooltip">Ortografia storica</xsl:attribute>
            <xsl:attribute name="data-info">
                <xsl:text>Forma normalizzata moderna: </xsl:text><xsl:value-of select="tei:reg"/>
            </xsl:attribute>
            
            <xsl:element name="span">
                <xsl:attribute name="class">testo-orig</xsl:attribute>
                <xsl:value-of select="tei:orig"/>
            </xsl:element>
            <xsl:element name="span">
                <xsl:attribute name="class">testo-regol</xsl:attribute>
                <xsl:value-of select="tei:reg"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!-- note filologiche -->

    <xsl:template match="tei:ptr[@type='notaEditoriale']">
        <xsl:element name="a">
            <xsl:attribute name="href"><xsl:value-of select="@target"/></xsl:attribute>
            <xsl:attribute name="class">link-glossa</xsl:attribute>
            <xsl:attribute name="title">Leggi la nota</xsl:attribute>
            <xsl:element name="sup">
                <xsl:attribute name="class">asterisco-glossa</xsl:attribute>
                <xsl:text>[</xsl:text><xsl:value-of select="@n"/><xsl:text>]</xsl:text>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:back">
        <div class="sezione-note">
            <hr class="divisore-sezione"/>
            <h3>Note editoriali</h3>
            <ol class="lista-note">
                <xsl:for-each select=".//tei:item">
                    <xsl:element name="li">
                        <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                        <strong><xsl:value-of select="tei:label"/>: </strong>
                        <span class="testo-nota"><xsl:value-of select="tei:note/tei:ab"/></span>
                    </xsl:element>
                </xsl:for-each>
            </ol>
        </div>
    </xsl:template>

    <!-- italic, citazioni, closer -->

    <xsl:template match="tei:hi[@rend='italic']">
        <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <xsl:template match="tei:quote">
        <div class="citazione"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:q">
        <span class="citazione-inline"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='closer']">
        <div class="contenitore-chiusura"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:dateline">
        <div class="data-chiusura"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:signed">
        <div class="chiusura"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="tei:pb|tei:cb|tei:facsimile"/>

    <!-- entità nominate -->

    <xsl:template match="tei:persName[@ref] | tei:author[@ref]">
        <xsl:element name="span">
            <xsl:attribute name="class">entita persona</xsl:attribute>
            <xsl:attribute name="data-titolo-tooltip">Dizionario prosopografico</xsl:attribute>
            <xsl:attribute name="data-info">
                <xsl:variable name="doc" select="substring-before(@ref, '#')"/>
                <xsl:variable name="id" select="substring-after(@ref, '#')"/>
                <xsl:value-of select="document($doc)//tei:person[@xml:id=$id]/tei:note/tei:p"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:placeName[@ref] | tei:pubPlace[@ref]">
        <xsl:element name="span">
            <xsl:attribute name="class">entita luogo</xsl:attribute>
            <xsl:attribute name="data-titolo-tooltip">Luoghi</xsl:attribute>
            <xsl:attribute name="data-info">
                <xsl:variable name="doc" select="substring-before(@ref, '#')"/>
                <xsl:variable name="id" select="substring-after(@ref, '#')"/>
                <xsl:value-of select="document($doc)//tei:place[@xml:id=$id]/tei:note/tei:p"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:title[@ref]">
        <xsl:element name="span">
            <xsl:attribute name="class">entita opera</xsl:attribute>
            <xsl:attribute name="data-titolo-tooltip">Riferimento bibliografico</xsl:attribute>
            <xsl:attribute name="data-info">
                <xsl:variable name="doc" select="substring-before(@ref, '#')"/>
                <xsl:variable name="id" select="substring-after(@ref, '#')"/>
                <xsl:value-of select="document($doc)//tei:biblStruct[@xml:id=$id]/tei:note/tei:p"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:orgName[@ref] | tei:publisher[@ref]">
        <xsl:element name="span">
            <xsl:attribute name="class">entita organizzazione</xsl:attribute>
            <xsl:attribute name="data-titolo-tooltip">Rete culturale</xsl:attribute>
            <xsl:attribute name="data-info">
                <xsl:variable name="doc" select="substring-before(@ref, '#')"/>
                <xsl:variable name="id" select="substring-after(@ref, '#')"/>
                <xsl:value-of select="document($doc)//tei:org[@xml:id=$id]/tei:desc"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- tassonomia -->

    <xsl:template match="tei:term[@type='verbum' or @type='forma_letteraria' or @type='stile']">
        <xsl:element name="span">
            <xsl:attribute name="class">
                <xsl:text>entita </xsl:text>
                <xsl:choose>
                    <xsl:when test="@subtype='vero_verita'">termine-vero</xsl:when>
                    <xsl:when test="@subtype='arti_visive'">termine-arti</xsl:when>
                    <xsl:when test="@subtype='rappresentazione'">termine-rapp</xsl:when>
                    <xsl:when test="@subtype='emarginazioneEdEsclusione'">termine-emarg</xsl:when>
                    <xsl:when test="@subtype='ismi'">termine-ismi</xsl:when>
                    <xsl:when test="@subtype='studio_osservazione'">termine-oss</xsl:when>
                    <xsl:when test="@subtype='genere_letterario'">termine-gen</xsl:when>
                    <xsl:when test="@subtype='autorialita_narrativita'">termine-aut</xsl:when>
                    <xsl:when test="@subtype='evoluzione_sociale'">termine-emarg</xsl:when>
                    <xsl:when test="@subtype='narrazione'">termine-nar</xsl:when>
                    <xsl:otherwise>termine-vero</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
            <xsl:attribute name="data-titolo-tooltip">Tema verista</xsl:attribute>
            <xsl:attribute name="data-info">
                <xsl:variable name="id" select="@subtype"/>
                <xsl:value-of select="document('coverlessTassonomia.xml')//tei:category[@xml:id=$id]/tei:catDesc"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>