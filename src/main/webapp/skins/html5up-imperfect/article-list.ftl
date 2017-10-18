<div id="main">
    <#list articles as article>
    <article class="post">
        <header>
            <div class="title">
                <h2><a rel="bookmark" href="${servePath}${article.articlePermalink}">
                    ${article.articleTitle}
                </a></h2>
                <p>${article.articleAbstract}</p>
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
        <a href="#" class="image featured">
            <img src="images/pic01.jpg" alt>
        </a>
        <div >
            ${article.articleAbstract}
        </div>

        <footer>
            <ul class="actions">
                <li><a href="${servePath}${article.articlePermalink}#more" rel="contents" class="button big">${readLabel}</a></li>
            </ul>
            <ul class="stats">
                <li><a href="#">General</a></li>
                <li><a href="#" class="icon fa-heart">28</a></li>
                <li><a href="#" class="icon fa-comment">128</a></li>
                <#list article.articleTags?split(",") as articleTag>
                    <li><a class="tag" rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                        ${articleTag}</a>
                    </li>
                </#list>
            </ul>
        </footer>
    </article>
    </#list>

    <!-- Pagination -->

    <#if 0 != paginationPageCount>
        <ul class="actions pagination">
            <li><a href="" class="disabled button big previous">Previous Page</a></li>
            <li><a href="#" class="button big next">Next Page</a></li>
        </ul>
    </#if>
</div>