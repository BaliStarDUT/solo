    <#list articles as article>
    <article class="post">
        <header>
            <div class="title">
                <h2><a rel="bookmark" href="${servePath}${article.articlePermalink}">
                    ${article.articleTitle}
                </a></h2>
            </div>
            <div class="meta">
                <a href="#" class="author">
                    <span class="name">${adminUser.userName}</span>
                    <img src="${adminUser.userAvatar}" aria-label="${adminUser.userName}" />
                </a>

                <div class="published" label="${createDateLabel}">
                    <i class="fa fa-calendar"></i>
                    <time>
                        ${article.articleCreateDate?string("yyyy-MM-dd")}
                    </time>
                </div>
                <span class="published" label="${commentCountLabel}">
                    <i class="fa fa-comments"></i>
                    <a href="${servePath}${article.articlePermalink}#comments">
                        ${article.articleCommentCount} ${commentLabel}</a>
                </span>

                <span class="published" label="${viewCountLabel}">
                    <i class="fa fa-eye"></i>
                    ${article.articleViewCount} ${viewLabel}
                </span>

            </div>
        </header>
        <a href="#" class="image featured">
            <img src="/skins/${skinDirName}/images/pic01.jpg" alt>
        </a>
        <div >
            ${article.articleAbstract}
        </div>

        <footer>
            <ul class="actions">
                <li><a href="${servePath}${article.articlePermalink}#more" rel="contents" class="button big">${readLabel}</a></li>
            </ul>
            <ul class="stats">
                <#list article.articleTags?split(",") as articleTag>
                    <li><a class="tag" rel="tag" href="${servePath}/tags/${articleTag?url('UTF-8')}">
                        ${articleTag}</a>
                    </li>
                </#list>
                <li><a href="#" class="icon fa-heart">0</a></li>
                <li><a href="#" class="icon fa-comment">0</a></li>
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
