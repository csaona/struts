<#-- CSV: Copied from the simple template, adapted to Chameleon theme -->
<#if (actionMessages?? && actionMessages?size > 0 && !parameters.isEmptyList)>
	<div<#rt/>
<#if parameters.id?if_exists != "">
 id="${parameters.id?html}"<#rt/>
</#if>
<#if parameters.cssClass??>
 class="${parameters.cssClass?html}"<#rt/>
<#else>
 class="actionMessage"<#rt/>
</#if>
<#if parameters.cssStyle??>
 style="${parameters.cssStyle?html}"<#rt/>
</#if>
>
		<#list actionMessages as message>
            <#if message?if_exists != "">
                <div class="grid_12 msg notice"><span><#if parameters.escape>${message!?html}<#else>${message!}</#if></span></div>
            </#if>
		</#list>
	</div>
</#if>