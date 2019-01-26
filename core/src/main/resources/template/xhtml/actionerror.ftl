<#-- CSV: Copied from the simple template, adapted to Chameleon theme -->
<#if (actionErrors?? && actionErrors?size > 0)>
    <div<#rt/>
<#if parameters.id?if_exists != "">
 id="${parameters.id?html}"<#rt/>
</#if>            
<#if parameters.cssClass??>
 class="${parameters.cssClass?html}"<#rt/>
<#else>
 class="errorMessage"<#rt/>
</#if>
<#if parameters.cssStyle??>
 style="${parameters.cssStyle?html}"<#rt/>
</#if>
>
    <#list actionErrors as error>
        <#if error?if_exists != "">
            <div class="grid_12 msg failure"><span><#if parameters.escape>${error!?html}<#else>${error!}</#if></span></div><#rt/>
        </#if>
    </#list>
    </div>
</#if>