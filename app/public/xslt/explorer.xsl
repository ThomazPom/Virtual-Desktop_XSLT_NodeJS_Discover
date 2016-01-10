<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Liste des établissements</h2>
				<xsl:for-each select="root/etabGroup">
					<xsl:variable name="namegroup" select="generate-id(.) "></xsl:variable>
					<div class="panel panel-default" id="{$namegroup}" >
						<div class="panel-heading" role="tab" id="heading{$namegroup}">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse{$namegroup}" aria-expanded="false" aria-controls="collapse{$namegroup}">
									<xsl:if test="./@name=''">(Aucun)</xsl:if>
									<xsl:value-of select="./@name"/>
								</a>
							</h4>
						</div>
						<div id="collapse{$namegroup}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading{$namegroup}">
							<div class="panel-body">


								<xsl:call-template name="etabList">
									<xsl:with-param name="node" select="."/>
								</xsl:call-template>
							</div>
						</div>
					</div>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<!-- CALL -->
<!-- <xsl:call-template name="etabList">
	<xsl:with-param name="node" select="UN_GROUPE_ETAB"/>
</xsl:call-template> -->
<!-- /CALL -->
<!-- TEMPLATE -->
<xsl:template name="etabList"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="node" select="0"/>
	<div class="panel-group" role="tablist" aria-multiselectable="false">
		<xsl:for-each select="$node/etablissement">
			<xsl:variable name="namegroup"  select="generate-id(.)"/>
			<xsl:variable name="UAI"  select="UAI"/>
			<div class="panel panel-default"  title="{UAI}" id="{$namegroup}" onclick="viewEtab(this)">
				<div class="panel-heading" role="tab" id="heading{$namegroup}">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse{$namegroup}" aria-expanded="false" aria-controls="collapse{$namegroup}">
							<xsl:value-of select="nom"/>
						</a>
					</h4>
				</div>
				<div id="collapse{$namegroup}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading{$namegroup}">
					<div class="panel-body">
					</div>
				</div>
			</div>
		</xsl:for-each>

	</div>
	<xsl:if test="$node/following-sibling::nombre">
		<xsl:call-template name="etabList">
			<xsl:with-param name="node" select="$node/following-sibling::nombre[1]"/>
		</xsl:call-template>
	</xsl:if>
</xsl:template>
</xsl:stylesheet>