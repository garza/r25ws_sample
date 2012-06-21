<?xml version='1.0'?>
<xsl:stylesheet version="2.0" xmlns:r25="http://www.collegenet.com/r25" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xl="http://www.w3.org/1999/xlink" exclude-result-prefixes="r25 xsl xl">

<xsl:output method="html" encoding="UTF-8" doctype-system="" />
<xsl:param name="base_url" select="''" />
<xsl:param name="session_id" select="''" />
<xsl:param name="user_name" select="''" />

<xsl:variable name="spaces_url" select="concat($base_url, 'spaces.xml?scope=extended&amp;query_id=463454&amp;session_id=', $session_id)"/>
<xsl:variable name="spaces" select="document($spaces_url)" />

<xsl:template match="/">
<html>
<head>
	<link rel="stylesheet" href="/r25ws/spomecs/css/style.css" />
</head>

<body>
	<div class="container">
		<section id="gridSystem">
			<div class="page-header">
				<h2>My First Report with null.xml</h2>
			</div>
		</section>

		<footer class="footer"><p>
			<xsl:if test="string-length($user_name) gt 0">Logged on as <xsl:value-of select="$user_name"/></xsl:if>
		</p></footer>
	</div>
</body>

</html>
</xsl:template>

</xsl:stylesheet>
