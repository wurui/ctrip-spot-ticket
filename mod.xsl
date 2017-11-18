<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-spot-ticket">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-spot-ticket" ox-mod="ctrip-spot-ticket">
            <h3>
                <img src="{data/title/icon}"/>
                <xsl:value-of select="data/title/title"/>
            </h3>
            <ul>
            	<xsl:for-each select="data/product-list/i">
	            	<li>
	            		<a href="{href}">
		            		<span class="right-button">
		            			<span class="price">
		            				<em><xsl:value-of select="price"/></em>
		            				<del>
		            					<xsl:value-of select="orig_price"/>
		            				</del>
		            				<br/>
		            				<b class="bt-buy">
		            					立即预订
		            				</b>
		            			</span>
		            		</span>
		            		<h4 class="title"><xsl:value-of select="title"/></h4>
		            		<p class="tags">
		            			<xsl:copy-of select="tags/i"/>
		            		</p>
		            		<p class="ext">
		            			购买须知 &gt;
		            		</p>
		            	</a>
	            	</li>
	            </xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
