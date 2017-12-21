<!-- Sidebar -->
<section id="sidebar">
    <!-- Intro -->
    <section id="intro">
        <a href="#" class="logo"><img src="${adminUser.userAvatar}" aria-label="${adminUser.userName}"/></a>
        <div class="fn-right" style="float: right;font-size: small;padding-top: 1em;">
            <a href="${servePath}/archives.html">
                ${statistic.statisticPublishedBlogArticleCount}
                <span class="ft-gray">${articleLabel}</span></a><br/>
            <a href="${servePath}/dynamic.html">
                ${statistic.statisticPublishedBlogCommentCount}
                <span class="ft-gray">${commentLabel}</span></a>
        </div>
        <div class="fn-right" style="float: right;font-size: smaller;padding-right: 2em;padding-top: 1em;">
            ${statistic.statisticBlogViewCount} <span class="ft-gray">${viewLabel}</span><br/>
            ${onlineVisitorCnt} <span class="ft-gray">${onlineVisitorLabel}</span>
        </div>
        <header>
            <h2 style="margin-bottom: 0em;">${adminUser.userName}</h2>
        </header>
    </section>

    <!-- About -->
    <section class="blurb">
        <h2>About</h2>
        <#if noticeBoard??>
              <p>${noticeBoard}</p>
        </#if>
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
                        <a href="#" class="author"><img src="/skins/${skinDirName}/images/Fiddlesticks_Square_0.png" alt="" /></a>
                    </header>
                    <a href="#" class="image"><img src="/skins/${skinDirName}/images/crop.jpg" alt="" /></a>
                </article>
             </#list>
        </div>
    </section>
    </#if>

    <#if 0 != mostViewCountArticles?size>
    <h2>${mostViewCountArticlesLabel}</h2>
    <section>
        <ul class="posts">
            <#list mostViewCountArticles as article>
                <!-- Mini Post -->
              <li>
                <article>
                    <header>
                        <h3>
                            <a rel="nofollow" aria-label="${article.articleCommentCount} ${commentLabel}" href="${servePath}${article.articlePermalink}">
                              ${article.articleTitle}</a>
                         </h3>
                        <time class="published" datetime="2015-10-20">
                            ${article.articleCreateDate?string("yyyy-MM-dd")}
                        </time>
                    </header>
                    <a href="#" class="image"><img src="/skins/${skinDirName}/images/Fiddlesticks_Square_0.png" alt="" /></a>
                </article>
              </li>
             </#list>
        </ul>
    </section>
    </#if>
    <!-- Footer -->
    <section id="footer">
        <ul class="icons">
            <li><a href="#" class="fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="fa-facebook"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="fa-rss"><span class="label">RSS</span></a></li>
            <li><a href="#" class="fa-envelope"><span class="label">Email</span></a></li>
        </ul>
        <p class="copyright">${footerContent}</p>
        <p class="copyright"><a href="${servePath}">${blogTitle}</a>  &nbsp;   • &nbsp;<a href="https://hacpai.com/tag/solo" target="_blank">Solo</a> ${version}</p>
        <p class="copyright">&copy; ${year}. Design: <a href="http://html5up.net">HTML5 UP</a>. Images: <a href="http://unsplash.com">Unsplash</a>.</p>
    </section>
</section>