<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">

<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<title><xsl:value-of select="atom:feed/atom:title"/></title>
<link rel="alternate" type="application/rss+xml" title="DARESCIENCE" href="feed.xml" />
<style type="text/css">
</style>
</head>
<body xmlns="http://www.w3.org/1999/xhtml">
	<header class="feed-header">
		<h1>Web Feed for <xsl:value-of select="atom:feed/atom:title"/></h1>
		<p><strong>This is a web feed,</strong> also known as an RSS or Atom feed. <strong>Subscribe</strong> by copying the URL from the address bar into your newsreader.</p>
		<p>Visit <a href="https://aboutfeeds.com">About Feeds</a> to get started with newsreaders and subscribing. It’s free.</p>
	</header>

	<main class="feed">
		<section class="entries">
			<h2>Entries</h2>
			<xsl:for-each select="atom:feed/atom:entry">
				<article class="entry">
					<h3><a><xsl:attribute name="href"><xsl:value-of select="atom:link/@href"/></xsl:attribute><xsl:value-of select="atom:title"/></a></h3>
					<p><xsl:value-of select="atom:summary"/></p>
					<ul>
					<xsl:for-each select="atom:author">
						<li><xsl:value-of select="atom:name" /></li>
					</xsl:for-each>
					</ul>
				</article>
			</xsl:for-each>
		</section>
	</main>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
