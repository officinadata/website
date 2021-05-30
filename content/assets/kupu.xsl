
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output method="xml"  />
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title><xsl:value-of select="rss/channel/title"/></title>
<link rel="alternate" type="application/rss+xml" title="Kupu o te Rā" href="feed.xml" />
<style type="text/css">

body {
	margin: 0px;
	padding: 0px;
	color: #000000;
	font-family: Verdana, Arial, Helvetica;
	font-size: 10pt;
	background-color: #003000;
}

a:LINK {
	text-decoration: none;
	color: #090;
}

a:ACTIVE {
}

a:VISITED {
	text-decoration: none;
}

a:HOVER {
	text-decoration: underline;
}

#Content {
	padding-top: 12px;
	padding-left: 35px;
	padding-right: 35px;
}

.rss {
	position: relative;
	display: inline;
	background-color: orange;
	color: #ffffff;
	border: solid 2px black;
	padding: 5px;
	padding-top: 2px;
	padding-bottom: 2px;
	font-weight: bold;
	font-family: Arial, Helvetica;
	margin: 0px;
	font-size: 25pt;
	left: -15px;
	top: -5px;
}

h1,h2,h4 {
	color: #ccc;
	font-weight: bold;
	font-family: Arial, Arial, Helvetica;
	margin: 0px;
	font-size: 25pt;
}

h2 {
	font-size: 16pt;
	margin-left: 16px;
}

h4 {
	font-size: 11pt;
	font-family: Arial, Helvetica;
}

#ContentDescription {
	margin: 35px;
	margin-bottom: 30px;
	color: #000000;
	background-color: #dddddd;
	padding-left: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
}

#ItemList {
	list-style-type: circle;
	color: #999;
}

.ItemListItem {
	padding-bottom: 8px;
}

.ItemListItemDetails {
	font-family: Arial, Helvetica;
	font-size: 8pt;
	color: #999;
}

</style>
</head>
<body xmlns="http://www.w3.org/1999/xhtml" bgcolor="#003000">
	<div id="ContentDescription">
		<div class="rss">RSS</div>
		<p>This is an RSS News Feed of <em>Kupu o te Rā</em>.

	        </p>
        	<p>
		Using this web address (URL) you can subscribe using an RSS reader. An RSS reader is an application that requests
			and perhaps stores the content from RSS news feeds. Some web based RSS readers include www.google.com/reader and www.bloglines.com.
		</p>
        <p>
		To use this feed in your RSS reader you will need the web address (URL) of this page:<br/>
			<ul>http://kupu.maori.nz/feed.xml</ul>
		</p>
	</div>

	<div id="Content">
		<h1><xsl:value-of select="rss/channel/title"/></h1>

		<ol id="ItemList">
			<xsl:for-each select="rss/channel/item">
				<li class="ItemListItem">
					<h4><a><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of select="title"/></a></h4>
					<div class="ItemListItemDetails">
						Published <xsl:value-of select="pubDate"/>
						<!--by <xsl:value-of select="dc:creator" />-->
					</div>
				</li>
			</xsl:for-each>
		</ol>
	</div>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
