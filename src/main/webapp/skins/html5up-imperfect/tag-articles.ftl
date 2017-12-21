<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${tag.tagTitle} - ${blogTitle}">
        <meta name="keywords" content="${metaKeywords},${tag.tagTitle}"/>
        <meta name="description" content="<#list articles as article>${article.articleTitle}<#if article_has_next>,</#if></#list>"/>
        </@head>
    </head>
    <body>
        <div id="wrapper">
            <#include "header.ftl">
            <div id="main">
               <main>
                   <div class="title">
                       <h2 class="tip"><i class="icon-tags"></i>
                           &nbsp;${tag.tagTitle}
                           <small>${tagLabel}</small>
                   </div>
                   <#include "article-list.ftl">
               </main>
            </div>
            <#include "side.ftl">
        </div>
        <#include "footer.ftl">
    </body>
</html>
