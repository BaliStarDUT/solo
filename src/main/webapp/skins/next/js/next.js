/*
 * Copyright (c) 2010-2016, b3log.org & hacpai.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/**
 * @fileoverview util and every page should be used.
 *
 * @author <a href="http://vanessa.b3log.org">Liyuan Li</a>
 * @version 0.1.0.0, Jan 11, 2016
 */

/**
 * @description next 皮肤脚本
 * @static
 */
var NexT = {
    init: function () {
        $('.sidebar-toggle').click(function () {
            var $sidebar = $('.sidebar');
            if ($(this).hasClass('sidebar-active')) {
                $(this).removeClass('sidebar-active');

                $('body').animate({
                    'padding-right': 0
                });
                $sidebar.animate({
                    right: -320
                });
            } else {
                $(this).addClass('sidebar-active');
                $('body').animate({
                    'padding-right': 320
                });
                $sidebar.animate({
                    right: 0
                });
            }
        });

        $('.site-nav-toggle').click(function () {
            $('.site-nav').slideToggle();
        });

        $(document).ready(function () {
            setTimeout(function () {
                $('.logo-wrap').css('opacity', 1);
                $('.logo-line-before i').animate({
                    'left': '0'
                }, function () {
                    $('.site-title').css('opacity', 1).animate({
                        'top': 0
                    }, function () {
                        $('.menu').css('opacity', 1).animate({
                            'margin-top': '15px'
                        });
                        $('.main').css('opacity', 1).animate({
                            'top': '0'
                        });
                    });


                });

                $('.logo-line-after i').animate({
                    'right': '0'
                });
            }, 500);
        });
    },
    initArticle: function () {
        if ($('.b3-solo-list li').length > 0) {
            $('.sidebar').html($('.b3-solo-list'));
            $('.sidebar-toggle').click();
        }
    }
};
NexT.init();