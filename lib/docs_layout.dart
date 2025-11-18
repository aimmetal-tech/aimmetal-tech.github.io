import 'package:jaspr_content/components/header.dart';
import 'package:jaspr_content/components/theme_toggle.dart';
import 'package:jaspr_content/jaspr_content.dart';
import 'package:my_jaspr_site/sidebar.dart';
import 'package:jaspr/jaspr.dart';

DocsLayout docsLayout() {
  // 为documentation sites设计的开箱即用的布局. Out-of-the-box 开箱即用
  return DocsLayout(
    header: header(),
    sidebar: sidebar(),
  );
}

Component header() {
  return fragment([
    Document.head(
      children: [
        Style(
          styles: [
            // 使目录跳转时不会被导航栏遮挡, 滚动时留出4.5rem的顶部缓冲(root element font-size)
            css(':root').styles(raw: {'scroll-padding-top': '4.5rem'}),
          ],
        ),
        // MathJax 配置 + 脚本, 用于渲染 markdown 中的 LaTeX 公式.
        script(
          content: r'''
window.MathJax = {
  tex: {
    inlineMath: [['$', '$'], ['\\(', '\\)']],
    displayMath: [['$$', '$$'], ['\\[', '\\]']]
  },
  options: { skipHtmlTags: ['script','noscript','style','textarea','pre','code'] }
};
''',
        ),
        script(
          src: 'https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js',
          defer: true,
        ),
        // Style(
        //   styles: [
        //     // 对于链接🔗默认不显示横线，只有在鼠标悬停时才显示横线
        //     css('.content a', [
        //       css('&').styles(textDecoration: TextDecoration.none),
        //       css('&:hover').styles(
        //         textDecoration: TextDecoration(line: TextDecorationLine.underline),
        //       ),
        //     ]),
        //   ],
        // ),
      ],
    ),
    const Header(
      title: 'AimMetal的博客',
      logo: '/images/logo.svg',
      items: [ThemeToggle()],
    ),
  ]);
}
