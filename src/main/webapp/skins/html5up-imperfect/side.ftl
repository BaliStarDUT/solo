<!-- Sidebar -->
<section id="sidebar">
    <!-- Intro -->
    <section id="intro">
        <a href="#" class="logo"><img src="${adminUser.userAvatar}" aria-label="${adminUser.userName}"/></a>
        <header>
            <h2>${adminUser.userName}</h2>
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
                        <a href="#" class="author"><img src="/skins/${skinDirName}/images/logo.jpg" alt="" /></a>
                    </header>
                    <a href="#" class="image"><img src="/skins/${skinDirName}/images/pic04.jpg" alt="" /></a>
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
                        <a href="#" class="author"><img src="/skins/${skinDirName}/images/logo.jpg" alt="" /></a>
                    </header>
                    <a href="#" class="image"><img src="/skins/${skinDirName}/images/pic04.jpg" alt="" /></a>
                </article>
             </#list>
        </div>
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
        <p class="copyright">&copy; Untitled. Design: <a href="http://html5up.net">HTML5 UP</a>. Images: <a href="http://unsplash.com">Unsplash</a>.</p>
    </section>
</section>