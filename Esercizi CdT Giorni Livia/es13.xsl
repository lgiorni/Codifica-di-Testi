<?xml version="1.0" encoding="UTF-8"?>

<!-- Modificare opportunamente il file template.xsl aggiungendo variabili, parametri e call template. -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" encoding="UTF-8"/>
    
    <!-- parametro -->
    <xsl:param name="titolo_pagina">Esercizio 13</xsl:param>

    <xsl:template match="/">
        <!-- variabile -->
        <xsl:variable name="colore_primario">#0044cc</xsl:variable>
        
        <html>
            <head>
                <title><xsl:value-of select="$titolo_pagina"/></title>
            </head>
            <body style="color: {$colore_primario};">
                <h1>Questo è l'esercizio 13</h1>
                <xsl:apply-templates/>
                
                <!-- call-template -->
                <xsl:call-template name="pie_di_pagina">
                    <xsl:with-param name="anno">2026</xsl:with-param>
                </xsl:call-template>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="pie_di_pagina">
        <xsl:param name="anno"/>
        <footer style="margin-top: 50px; font-size: small;">
            Svolto nell'anno: <xsl:value-of select="$anno"/>
        </footer>
    </xsl:template>

</xsl:stylesheet>