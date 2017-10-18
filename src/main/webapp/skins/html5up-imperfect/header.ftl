<header id="header">
    <h1><a href="${servePath}">${blogTitle}</a></h1>
    <nav class="links">
        <ul>
            <li><a href="${servePath}/admin-index.do#main" title="${adminLabel}">
                <i class="icon-setting"></i> ${adminLabel}
                </a>
            </li>
            <li><a href="${servePath}/dynamic.html" rel="section">
                    <i class="icon-refresh"></i> ${dynamicLabel}
                </a>
            </li>
            <li><a href="${servePath}/tags.html" rel="section">
                    <i class="icon-tags"></i> ${allTagsLabel}
                </a>
            </li>
             <li><a href="${servePath}/archives.html">
                     <i class="icon-inbox"></i> ${archiveLabel}
                 </a>
            </li>
            <li><a rel="archive" href="${servePath}/links.html">
                    <i class="icon-link"></i> ${linkLabel}
                </a>
            </li>
            <li><a rel="alternate" href="${servePath}/blog-articles-rss.do" rel="section">
                    <i class="icon-rss"></i> RSS
                </a>
            </li>
        </ul>
    </nav>
    <nav class="main">
        <ul>
            <li class="search">
                <a class="fa-search" href="#search">Search</a>
                <form id="search" method="get" target="_blank" action="http://zhannei.baidu.com/cse/site">
                    <input type="text" name="q" placeholder="${searchLabel}" />
                    <input type="hidden" name="cc" value="${serverHost}">
                </form>
            </li>
            <li class="menu">
                <a class="fa-bars" href="#menu">Menu</a>
            </li>
        </ul>
    </nav>
</header>