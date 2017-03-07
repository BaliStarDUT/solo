<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${blogTitle}">
        <#if metaKeywords??>
        <meta name="keywords" content="${metaKeywords}"/>
        </#if>
        <#if metaDescription??>
        <meta name="description" content="${metaDescription}"/>
        </#if>
        </@head>
    </head>
    <body class="home page-template-default page page-id-7 logged-in admin-bar twentyseventeen-front-page has-header-image page-two-column colors-light customize-support">
        ${topBarReplacement}
        <div class="site">
            <#include "header.ftl">
            <div class="main">
                <div class="wrapper" id="index">
                <#include "article-list.ftl">
                </div>
            </div>
            <#include "footer.ftl">
        </div>
    </body>
</html>
