<!-- Sidebar -->
<section id="sidebar">
    <!-- Intro -->
    <section id="intro">
        <a href="#" class="logo"><img src="/skins/${skinDirName}/images/logo.jpg" alt="" /></a>
        <header>
            <h2>${adminUser.userName}</h2>
            <#if noticeBoard??>
                  <h3>${noticeBoard}</h3>
            </#if>
        </header>
    </section>
    <!-- Mini Posts -->
    <#if 0 != mostCommentArticles?size>
    <h2>${mostCommentArticlesLabel}</h2>

    <section>
        <div class="mini-posts">
            <#list mostCommentArticles as article>
                <!-- Mini Post -->
                <article class="mini-post">
                    <header>
                        <h3>
                            <a rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}" href="${servePath}${article.articlePermalink}">
                              ${article.articleTitle}</a>
                         </h3>
                        <time class="published" datetime="2015-10-20">
                            ${article.articleCreateDate?string("yyyy-MM-dd")}
                        </time>
                        <a href="#" class="author"><img src="/skins/${skinDirName}/images/logo.jpg" alt="" /></a>
                    </header>
                    <a href="#" class="image"><img src="images/pic04.jpg" alt="" /></a>
                </article>
             </#list>
        </div>
    </section>
    </#if>
    <#if 0 != mostViewCountArticles?size>
    <h2>${mostViewCountArticlesLabel}</h2>

    <section>
        <div class="mini-posts">
            <#list mostViewCountArticles as article>
                <!-- Mini Post -->
                <article class="mini-post">
                    <header>
                        <h3>
                            <a rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}" href="${servePath}${article.articlePermalink}">
                              ${article.articleTitle}</a>
                         </h3>
                        <time class="published" datetime="2015-10-20">
                            ${article.articleCreateDate?string("yyyy-MM-dd")}
                        </time>
                        <a href="#" class="author"><img src="images/logo.jpg" alt="" /></a>
                    </header>
                    <a href="#" class="image"><img src="images/pic04.jpg" alt="" /></a>
                </article>
             </#list>
        </div>
    </section>
    </#if>
</section>