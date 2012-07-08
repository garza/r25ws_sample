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
	<link>
		<xsl:attribute name="rel">stylesheet</xsl:attribute>
		<xsl:attribute name="href">http://utsa.edu/calendar/bootstrap/css/bootstrap.css</xsl:attribute>
	</link>
</head>
<body>
	<div class="container">
		<section id="gridSystem">
			<div class="page-header">
				<h2>My Third Report with null.xml</h2>
			</div>
			<div class="row"><div class="span9">
			<table class="table table-bordered table-striped">
				<colgroup><col class="span1"/><col class="span3"/><col class="span5"/></colgroup>
				<thead><tr><td>space id</td><td>name</td><td>formal name</td></tr></thead>
				<tbody>
<xsl:for-each select="$spaces/r25:spaces/r25:space">
				<tr>
					<td><input>
						<xsl:attribute name="type">button</xsl:attribute>
						<xsl:attribute name="id">button</xsl:attribute>
						<xsl:attribute name="name">space_id</xsl:attribute>
						<xsl:attribute name="value"><xsl:value-of select="./r25:space_id"/></xsl:attribute>
						</input></td>
					<td><xsl:value-of select="./r25:space_name"/></td>
					<td><xsl:value-of select="./r25:formal_name"/></td>
				</tr>
</xsl:for-each>
				</tbody>
			</table>
			
			<table class="table table-bordered table-striped" id="events">
				<colgroup><col class="span1"/><col class="span3"/><col class="span5"/></colgroup>
				<thead><tr><td>Ref</td><td>Start</td><td>Name</td></tr></thead>
				<tbody/>
			</table>
			</div></div>
		</section>
		<footer class="footer"><p>
			<xsl:if test="string-length($user_name) gt 0">Logged on as <xsl:value-of select="$user_name"/></xsl:if>
		</p>
	<p><a><xsl:attribute name="target">_blank</xsl:attribute>
		<xsl:attribute name="href">https://raw.github.com/garza/r25ws_sample/master/sample_03.1.xsl</xsl:attribute>
		source</a></p>
	</footer>
	</div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript"><![CDATA[
/* js code starts here */
var event_url = "events.xml?contains=Orientation&cache=120&scope=simple&otransform=json.xsl&lint=T&simple=T&space_id=";
$("#button").click(function(){
	var space_id = $(this).val();
	$.ajax({
		type: "GET",
		url: event_url + space_id,
		dataType: "json",
		context: this,
		success: function(resp) {
			$(resp.events.event).each(function(){
				var row = '<tr><td>' + this.event_locator + '</td><td>' + this.start_date + '</td><td>' + this.event_name + '</td></tr>';
				$("#events tbody").append(row);
			});
		}
	});
});		
]]></script>
</body>

</html>
</xsl:template>

</xsl:stylesheet>
