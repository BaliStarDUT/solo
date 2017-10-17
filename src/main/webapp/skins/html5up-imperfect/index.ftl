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
    <body>
        <div id="wrapper">
            <#include "header.ftl">
            <div id="main">
                <#include "article-list.ftl">
            <div>
            <#include "side.ftl">
            <!--<section id="sidebar">
                <section id="intro">
                </section>
            </section> -->
        </div>
        <!--<div class="wrapper">
            <div class="main-wrap">
                <main>
                    <#include "article-list.ftl">
                </main>
                <#include "side.ftl">
            </div>
        </div>-->
        <#include "footer.ftl">
    </body>
</html>