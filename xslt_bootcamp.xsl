<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict/EN" doctype-system="http://w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes"/>

	<xsl:template match="/">
		<html>
			<head>
				<title>Spendenliste</title>
			</head>
			<body>
				<h1>Einzahlung seit 1999</h1>
				
				<ul>
					<xsl:apply-templates select="//donation">
							<xsl:sort select="text()" data-type="text" />
					</xsl:apply-templates>
				</ul>	
				
			</body>
		</html>
	</xsl:template>

	<xsl:template match="donation">
		<li>Hilfsprojekt <xsl:value-of select="text()"/> von
			<xsl:value-of select="@year" /> unterstuetz mit
			<xsl:value-of select="@amount" /> CHF.

		</li>
	</xsl:template>
	
</xsl:stylesheet>