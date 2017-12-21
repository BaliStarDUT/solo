<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${archiveLabel}"/>
        <meta name="description" content="${metaDescription},${archiveLabel}"/>
        </@head>
    </head>
    <body>
        <div id="wrapper">
            <#include "header.ftl">
            <div id="main">
                <main class="other">
                    <div class="title">
                         <h2><i class="icon-link"></i>
                             &nbsp;${linkLabel}</h2>
                    </div>
                    <#if 0 != links?size>
                        <ul class="list">
                            <#list links as link>
                                <li>
                                    <a rel="friend" href="${link.linkAddress}" title="${link.linkDescription}" target="_blank">
                                        ${link.linkTitle}
                                    </a>
                                </li>
                            </#list>
                        </ul>
                    </#if>
                </main>
            </div>
            <#include "side.ftl">
        </div>
        <#include "footer.ftl">

    </body>
</html>
