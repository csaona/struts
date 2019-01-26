<#--
/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
-->
<#--
	Only show message if errors are available.
	This will be done if ActionSupport is used.
-->
<#assign hasFieldErrors = parameters.name?? && fieldErrors?? && fieldErrors[parameters.name]??/>
<#if (parameters.errorposition!"yuhu") == 'top'><#-- CSV: We do not want error messages at the top by default-->
<#if hasFieldErrors>
<#list fieldErrors[parameters.name] as error>
<tr errorFor="${parameters.id}">
    <td class="tdErrorMessage" colspan="2"><#rt/>
        <span class="errorMessage">${error}</span><#t/>
    </td><#lt/>
</tr>
</#list>
</#if>
</#if>
<#if !parameters.labelposition?? && (parameters.form.labelposition)??>
<#assign labelpos = parameters.form.labelposition/>
<#elseif parameters.labelposition??>
<#assign labelpos = parameters.labelposition/>
</#if>
<#--
	if the label position is top,
	then give the label it's own row in the table
-->
<tr>
<#if (labelpos!"") == 'top'>
    <td class="tdLabelTop" colspan="2"><#rt/>
<#else>
    <td class="tdLabel"><#rt/>
</#if>
<#if parameters.label??>
    <label <#t/>
<#if parameters.id??>
        for="${parameters.id}" <#t/>
</#if>
<#if hasFieldErrors>
        class="errorLabel"<#t/>
<#else>
        class="label"<#t/>
</#if>
    ><#t/>
<#-- CSV: We do not want "*" marking required fields, removed left span -->
${parameters.label}<#t/>
<#-- CSV: We do not want "*" marking required fields, removed right span -->
${parameters.labelseparator!":"}<#t/>
<#-- CSV: Removed tooltip.ftl include (ugly, you implement it with a infobar later)-->
</label><#t/>
</#if>
    </td><#lt/>
<#-- add the extra row -->
<#if (labelpos!"") == 'top'>
</tr>
<tr>
</#if>
