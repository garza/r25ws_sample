<?xml version='1.0'?>
<xsl:stylesheet version="2.0" xmlns:r25="http://www.collegenet.com/r25" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xl="http://www.w3.org/1999/xlink" exclude-result-prefixes="r25 xsl xl">

<xsl:output method="html" encoding="UTF-8" doctype-system="" />
<xsl:param name="base_url" select="''" />
<xsl:param name="session_id" select="''" />
<xsl:param name="user_name" select="''" />

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

			<xsl:apply-templates />

		</section>

		<footer class="footer"><p>
			<xsl:if test="string-length($user_name) gt 0">Logged on as <xsl:value-of select="$user_name"/></xsl:if>
		</p></footer>

	</div><!-- end container -->
	<script src="/r25ws/spomecs/js/jquery-1.7.2.min.js" type="text/javascript"></script>
	<script src="/r25ws/spomecs/js/spomecs.js" type="text/javascript"></script>
</body>

</html>
</xsl:template>



</xsl:stylesheet>
