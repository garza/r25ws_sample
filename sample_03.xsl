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
<head/>
<body>
	<div class="container">
		<section id="gridSystem">
			<div class="page-header">
				<h2>My Second Report with null.xml</h2>
			</div>
			<div class="row"><div class="span9">
			<table class="table table-bordered table-striped">
				<colgroup>
					<col class="span1"/><col class="span3"/><col class="span5"/>
				</colgroup>
				<thead>
				<tr>
					<td>space id</td><td>name</td><td>formal name</td>
				</tr>
				</thead>
				<tbody>
<xsl:for-each select="$spaces/r25:spaces/r25:space">
				<tr>
					<td><xsl:value-of select="./r25:space_id"/></td>
					<td><xsl:value-of select="./r25:space_name"/></td>
					<td><xsl:value-of select="./r25:formal_name"/></td>
				</tr>
</xsl:for-each>
				</tbody>
			</table>
			
			</div></div>
		</section>

		<footer class="footer"><p>
			<xsl:if test="string-length($user_name) gt 0">Logged on as <xsl:value-of select="$user_name"/></xsl:if>
		</p></footer>
	</div>
</body>

</html>
</xsl:template>

</xsl:stylesheet>
