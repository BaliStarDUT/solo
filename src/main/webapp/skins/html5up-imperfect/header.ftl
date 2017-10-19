<header id="header">
    <h1><a href="${servePath}">${blogTitle}</a></h1>
    <nav class="links">
        <ul>

            <li><a href="${servePath}" >
                <i class="fa fa-home"></i> ${indexLabel}
                </a>
            </li>
            <li><a href="${servePath}/dynamic.html" rel="section">
                    <i class="fa fa-refresh"></i> ${dynamicLabel}
                </a>
            </li>
            <li><a href="${servePath}/tags.html" rel="section">
                    <i class="fa fa-tags"></i> ${allTagsLabel}
                </a>
            </li>
             <li><a href="${servePath}/archives.html">
                     <i class="fa fa-inbox"></i> ${archiveLabel}
                 </a>
            </li>
            <li><a rel="archive" href="${servePath}/links.html">
                    <i class="fa fa-link"></i> ${linkLabel}
                </a>
            </li>
            <li><a rel="alternate" href="${servePath}/blog-articles-rss.do" rel="section">
                    <i class="fa fa-rss"></i> RSS
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
<!-- Menu -->
<section id="menu">

    <!-- Search
        <section>
            <form class="search" method="get" action="#">
                <input type="text" name="query" placeholder="Search" />
            </form>
        </section>
    -->
    <!-- Links
        <section>
            <ul class="links">
                <li>
                    <a href="#">
                        <h3>Lorem ipsum</h3>
                        <p>Feugiat tempus veroeros dolor</p>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <h3>Dolor sit amet</h3>
                        <p>Sed vitae justo condimentum</p>
                    </a>
                </li>

            </ul>
        </section>
-->
    <!-- Actions -->
        <section>
            <#if isLoggedIn>
            <ul class="actions vertical">
                <li><a href="${servePath}/admin-index.do#main" title="${adminLabel}" class="button big fit">
                    <i class="fa fa-cog"></i> ${adminLabel}</a>
                </li>
            </ul>
            <ul class="actions vertical">
                <li><a href="${logoutURL}" class="button big fit">
                     <i class="fa fa-sign-out"></i> ${logoutLabel}
                     </a></li>
            </ul>
            <#else>
                 <ul class="actions vertical">
                    <li><a href="${loginURL}" class="button big fit">
                        <i class="fa fa-sign-in"></i> ${loginLabel}
                    </a></li>
                </ul>
                <ul class="actions vertical">
                    <li><a href="${servePath}/register" class="button big fit">
                        <i class="fa fa-sign-in"></i> ${registerLabel}
                    </a></li>
                </ul>
             </#if>
        </section>


</section>