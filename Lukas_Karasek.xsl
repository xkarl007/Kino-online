<?xml version="1.0" encoding="UTF-8"?>
<!-- Odkaz na github: https://github.com/xkarl007/Kino-online -->
<!-- Vybrání všech druhů karet, které mají koeficient kreditů vyšší nebo roven desíti, a transformace do JSON -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="KinoOnline_konfigurace/karty-nastaveni/karta [koeficient-kreditu >= 10]"> 
			<xsl:sort select="@knazev" order="descending"/>
			{
			"Název karty": "<xsl:value-of select="@knazev"/>",
			"Limit kreditů": "<xsl:value-of select="limit-kreditu"/>",
			"Koeficient kreditu": "<xsl:value-of select="koeficient-kreditu"/>",
			"Doba platnosti": "<xsl:value-of select="doba-platnosti"/>",
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>