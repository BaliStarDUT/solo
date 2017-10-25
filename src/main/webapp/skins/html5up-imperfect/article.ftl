<#include "macro-head.ftl">
<#include "macro-comments.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${article.articleTitle} - ${blogTitle}">
        <meta name="keywords" content="${article.articleTags}" />
        <meta name="description" content="${article.articleAbstract?html}" />
        </@head>
        <#if previousArticlePermalink??>
            <link rel="prev" title="${previousArticleTitle}" href="${servePath}${previousArticlePermalink}">
        </#if>
        <#if nextArticlePermalink??>
            <link rel="next" title="${nextArticleTitle}" href="${servePath}${nextArticlePermalink}">
        </#if>
    </head>
    <body>
        <#include "header.ftl">
        <div id="wrapper">
            <div id="main">
                <main>
                    <article class="post">
                        <header>
                          <div class="title">
                            <h1>
                                <a rel="bookmark" href="${servePath}${article.articlePermalink}">
                                    ${article.articleTitle}
                                </a>
                                <#if article.articlePutTop>
                                    <sup>
                                        ${topArticleLabel}
                                    </sup>
                                </#if>
                                <#if article.hasUpdated>
                                    <sup>
                                        ${updatedLabel}
                                    </sup>
                                </#if>
                            </h1>
                          </div>
                            <div class="meta">
                                <span class="published" aria-label="${createDateLabel}">
                                    <i class="icon-date"></i>
                                    <time>
                                        ${article.articleCreateDate?string("yyyy-MM-dd")}
                                    </time>
                                </span>
                                 <span class="published" aria-label="${commentCountLabel}">
                                    <i class="icon-comments"></i>
                                    <a href="${servePath}${article.articlePermalink}#comments">
                                        ${article.articleCommentCount} ${commentLabel}</a>
                                </span>
                                <span class="published" aria-label="${viewCountLabel}">
                                    <i class="icon-views"></i>
                                    ${article.articleViewCount} ${viewLabel}
                                </span>
                            </div>
                        </header>

                        <div class="content-reset">
                            ${article.articleContent}
                            <#if "" != article.articleSign.signHTML?trim>
                                <div>
                                    ${article.articleSign.signHTML}
                                </div>
                            </#if>
                        </div>

                        <footer >
                           <#if previousArticlePermalink??>
                                <ul class="actions">
                                    <li><a href="${servePath}${previousArticlePermalink}" rel="prev" class="button big"
                                        aria-label="${previousArticleTitle}">${previousArticleLabel}
                                        </a></li>
                                </ul>
                            </#if>
                            <#if nextArticlePermalink??>
                                <ul class="actions">
                                    <li><a href="${servePath}${nextArticlePermalink}" rel="next" class="button big"
                                        aria-label="${nextArticleTitle}">
                                        ${nextArticleLabel}
                                      </a></li>
                                </ul>
                            </#if>
                           <ul class="stats">
                               <#list article.articleTags?split(",") as articleTag>
                                   <li><a class="tag" rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                                       ${articleTag}</a>
                                   </li>
                               </#list>
                           </ul>

                        </footer>
                        <@comments commentList=articleComments article=article></@comments>
                        <div id="externalRelevantArticles" class="list"></div>
                        <div id="relevantArticles" class="list"></div>
                        <div id="randomArticles" class="list"></div>
                    </article>
                </main>
            </div>
             <#include "side.ftl">
        </div>
        <#include "footer.ftl">
        <@comment_script oId=article.oId>
        page.tips.externalRelevantArticlesDisplayCount = "${externalRelevantArticlesDisplayCount}";
        <#if 0 != randomArticlesDisplayCount>
        page.loadRandomArticles();
        </#if>
        <#if 0 != externalRelevantArticlesDisplayCount>
        page.loadExternalRelevantArticles("<#list article.articleTags?split(",") as articleTag>${articleTag}<#if articleTag_has_next>,</#if></#list>"
            , "<header class='title'><h2>${externalRelevantArticlesLabel}</h2></header>");
        </#if>
        <#if 0 != relevantArticlesDisplayCount>
        page.loadRelevantArticles('${article.oId}', '<h4>${relevantArticlesLabel}</h4>');
        </#if>
        </@comment_script>    
    </body>
</html>
