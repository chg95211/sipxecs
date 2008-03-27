<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version='1.0'
xmlns="http://www.w3.org/TR/xhtml1/transitional"
exclude-result-prefixes="#default">

<xsl:import href="/usr/share/sgml/docbook/xsl-stylesheets/xhtml/docbook.xsl"/>

<xsl:template match="partintroinfo"/>

<!-- These are the default parmeters, twick at envy -->

<xsl:param name="admon.graphics.extension" select="'.png'"/>
<xsl:param name="admon.graphics" select="0"/>
<xsl:param name="admon.graphics.path">images/</xsl:param>
<xsl:param name="admon.style">
<xsl:text>margin-left: 0.5in; margin-right: 0.5in;</xsl:text>
</xsl:param>
<xsl:param name="annotate.toc" select="1"/>
<xsl:param name="appendix.autolabel" select="1"/>
<xsl:param name="author.othername.in.middle" select="1"/>
<xsl:param name="autotoc.label.separator" select="'. '"/>
<xsl:param name="base.dir" select="''"/>
<xsl:param name="biblioentry.item.separator">. </xsl:param>
<xsl:param name="bibliography.collection" select="'http://docbook.sourceforge.net/release/bibliography/bibliography.xml'"/>
<xsl:param name="bridgehead.in.toc" select="0"/>
<xsl:param name="callout.defaultcolumn" select="'60'"/>
<xsl:param name="callout.graphics.extension" select="'.png'"/>
<xsl:param name="callout.graphics" select="'1'"/>
<xsl:param name="callout.graphics.number.limit" select="'10'"/>
<xsl:param name="callout.graphics.path" select="'images/callouts/'"/>
<xsl:param name="callout.list.table" select="'1'"/>
<xsl:param name="callout.unicode" select="0"/>
<xsl:param name="callout.unicode.number.limit" select="'10'"/>
<xsl:param name="callout.unicode.start.character" select="10102"/>
<xsl:param name="callouts.extension" select="'1'"/>
<xsl:param name="chapter.autolabel" select="1"/>

<xsl:param name="chunk.datafile" select="'.chunks'"/>


<xsl:param name="chunk.first.sections" select="0"/>


<xsl:param name="chunk.quietly" select="0"/>


<xsl:param name="chunk.section.depth" select="1"/>


<xsl:param name="chunk.toc" select="''"/>

<xsl:param name="citerefentry.link" select="'0'"/>
<xsl:param name="css.decoration">1</xsl:param>
<xsl:param name="default.encoding" select="'ISO-8859-1'"/>
<xsl:param name="default.table.width" select="''"/>

<xsl:param name="draft.watermark.image" select="'http://docbook.sourceforge.net/release/images/draft.png'"/>

<xsl:param name="ebnf.table.bgcolor" select="'#F5DCB3'"/>
<xsl:param name="ebnf.table.border" select="1"/>

<xsl:param name="emphasis.propagates.style" select="1"/>


<xsl:param name="firstterm.only.link" select="0"/>


<xsl:param name="formal.procedures" select="1"/>


<xsl:param name="formal.title.placement">
figure before
example before
equation before
table before
procedure before
</xsl:param>

<xsl:param name="funcsynopsis.decoration" select="1"/>
<xsl:param name="funcsynopsis.style">kr</xsl:param>
<xsl:param name="function.parens">0</xsl:param>

<xsl:param name="generate.id.attributes" select="0"/>

<xsl:param name="generate.index" select="1"/>
<xsl:param name="generate.legalnotice.link" select="0"/>
<xsl:param name="generate.section.toc.level" select="0"/>

<xsl:param name="generate.toc">
appendix  toc
article   toc
book      toc,figure,table,example,equation
chapter   toc
part      toc
preface   toc
qandadiv  toc
qandaset  toc
reference toc
section   toc
set       toc
</xsl:param>



<xsl:param name="glossary.collection" select="''"/>

<xsl:param name="glossterm.auto.link" select="'0'"/>
<xsl:param name="graphic.default.extension"/>
<xsl:param name="html.base"/>

<xsl:param name="html.cleanup" select="1"/>


<xsl:param name="html.ext" select="'.html'"/>


<xsl:param name="html.longdesc" select="1"/>


<xsl:param name="html.longdesc.link" select="$html.longdesc"/>

<xsl:param name="html.stylesheet" select="''"/>
<xsl:param name="html.stylesheet.type">text/css</xsl:param>

<xsl:param name="htmlhelp.alias.file" select="'alias.h'"/>


<xsl:param name="htmlhelp.autolabel" select="0"/>


<xsl:param name="htmlhelp.chm" select="'htmlhelp.chm'"/>


<xsl:param name="htmlhelp.default.topic" select="''"/>


<xsl:param name="htmlhelp.encoding" select="'iso-8859-1'"/>


<xsl:param name="htmlhelp.enumerate.images" select="0"/>


<xsl:param name="htmlhelp.force.map.and.alias" select="0"/>


<xsl:param name="htmlhelp.hhc" select="'toc.hhc'"/>


<xsl:param name="htmlhelp.hhc.folders.instead.books" select="1"/>


<xsl:param name="htmlhelp.hhc.section.depth" select="5"/>


<xsl:param name="htmlhelp.hhc.show.root" select="1"/>


<xsl:param name="htmlhelp.hhp" select="'htmlhelp.hhp'"/>


<xsl:param name="htmlhelp.hhp.tail"/>


<xsl:param name="htmlhelp.map.file" select="'context.h'"/>


<xsl:param name="htmlhelp.title" select="''"/>

<xsl:param name="inherit.keywords" select="'1'"/>
<xsl:param name="label.from.part" select="'0'"/>
<xsl:param name="linenumbering.everyNth" select="'5'"/>
<xsl:param name="linenumbering.extension" select="'1'"/>
<xsl:param name="linenumbering.separator" select="' '"/>
<xsl:param name="linenumbering.width" select="'3'"/>
<xsl:param name="link.mailto.url"/>
<xsl:param name="make.single.year.ranges" select="0"/>

<xsl:param name="make.valid.html" select="1"/>

<xsl:param name="make.year.ranges" select="0"/>

<xsl:param name="manual.toc" select="''"/>

<xsl:param name="navig.graphics.extension" select="'.gif'"/>
<xsl:param name="navig.graphics" select="0"/>
<xsl:param name="navig.graphics.path">images/</xsl:param>
<xsl:param name="navig.showtitles">1</xsl:param>
<xsl:param name="nominal.table.width" select="'6in'"/>
<xsl:param name="olink.fragid" select="'fragid='"/>
<xsl:param name="olink.outline.ext" select="'.olink'"/>
<xsl:param name="olink.pubid" select="'pubid='"/>
<xsl:param name="olink.resolver" select="'/cgi-bin/olink'"/>
<xsl:param name="olink.sysid" select="'sysid='"/>

<xsl:param name="output.method" select="'xml'"/>

<xsl:param name="part.autolabel" select="1"/>
<xsl:param name="phrase.propagates.style" select="1"/>

<xsl:param name="pixels.per.inch" select="90"/>

<xsl:param name="preface.autolabel" select="0"/>
<xsl:param name="process.empty.source.toc" select="0"/>
<xsl:param name="process.source.toc" select="0"/>

<xsl:param name="profile.arch" select="''"/>


<xsl:param name="profile.condition" select="''"/>


<xsl:param name="profile.conformance" select="''"/>


<xsl:param name="profile.lang" select="''"/>


<xsl:param name="profile.os" select="''"/>


<xsl:param name="profile.revision" select="''"/>


<xsl:param name="profile.revisionflag" select="''"/>


<xsl:param name="profile.role" select="''"/>


<xsl:param name="profile.security" select="''"/>


<xsl:param name="profile.userlevel" select="''"/>


<xsl:param name="profile.vendor" select="''"/>


<xsl:param name="profile.attribute" select="''"/>


<xsl:param name="profile.value" select="''"/>


<xsl:param name="profile.separator" select="';'"/>


<xsl:param name="punct.honorific" select="'.'"/>

<xsl:param name="qanda.defaultlabel">number</xsl:param>
<xsl:param name="qanda.inherit.numeration" select="1"/>
<xsl:param name="qandadiv.autolabel" select="1"/>
<xsl:param name="refentry.generate.name" select="1"/>

<xsl:param name="refentry.generate.title" select="0"/>

<xsl:param name="refentry.separator" select="'1'"/>
<xsl:param name="refentry.xref.manvolnum" select="1"/>
<xsl:param name="root.filename" select="'index'"/>
<xsl:param name="rootid" select="''"/>
<xsl:param name="runinhead.default.title.end.punct" select="'.'"/>
<xsl:param name="runinhead.title.end.punct" select="'.!?:'"/>
<xsl:param name="saxon.character.representation" select="'entity;decimal'"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="0"/>

<xsl:param name="segmentedlist.as.table" select="0"/>

<xsl:param name="shade.verbatim" select="0"/>
<xsl:attribute-set name="shade.verbatim.style">
<xsl:attribute name="border">0</xsl:attribute>
<xsl:attribute name="bgcolor">#E0E0E0</xsl:attribute>
</xsl:attribute-set>
<xsl:param name="show.comments">1</xsl:param>
<xsl:param name="show.revisionflag">0</xsl:param>
<xsl:param name="spacing.paras" select="'0'"/>
<xsl:param name="suppress.navigation">0</xsl:param>

<xsl:param name="table.border.color" select="'black'"/>


<xsl:param name="table.border.style" select="'solid'"/>


<xsl:param name="table.border.thickness" select="'0.5pt'"/>


<xsl:param name="table.borders.with.css" select="0"/>

<xsl:param name="tablecolumns.extension" select="'1'"/>
<xsl:param name="textinsert.extension" select="'1'"/>

<xsl:param name="tex.math.file" select="'tex-math-equations.tex'"/>


<xsl:param name="tex.math.in.alt" select="''"/>


<xsl:param name="tex.math.delims" select="'1'"/>

<xsl:param name="toc.list.type">dl</xsl:param>
<xsl:param name="toc.section.depth">2</xsl:param>
<xsl:param name="ulink.target" select="'_top'"/>
<xsl:param name="use.extensions" select="'0'"/>
<xsl:param name="use.id.as.filename" select="'1'"/>
<xsl:param name="using.chunker" select="0"/>

<xsl:param name="variablelist.as.table" select="0"/>

</xsl:stylesheet>