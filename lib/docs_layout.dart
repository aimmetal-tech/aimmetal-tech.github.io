import 'package:jaspr_content/components/header.dart';
import 'package:jaspr_content/components/theme_toggle.dart';
import 'package:jaspr_content/jaspr_content.dart';
import 'package:blog_of_aimmetal/sidebar.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

DocsLayout docsLayout() {
  // 为documentation sites设计的开箱即用的布局. Out-of-the-box 开箱即用
  return DocsLayout(
    header: header(),
    sidebar: sidebar(),
  );
}

Component header() {
  return Component.fragment([
    Document.head(
      children: [
        Style(
          styles: [
            // 使目录跳转时不会被导航栏遮挡, 滚动时留出4.5rem的顶部缓冲(root element font-size)
            css(':root').styles(raw: {'scroll-padding-top': '4.5rem'}),
          ],
        ),
        Style(
          styles: [
            css('.content .badges').styles(
              raw: {
                'display': 'flex',
                'gap': '8px',
                'flex-wrap': 'wrap',
                'justify-content': 'flex-start',
                'align-items': 'center',
              },
            ),
            css('.content .badges img').styles(raw: {
              'pointer-events': 'none',
            }),
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
      ],
    ),
    const Header(
      title: 'AimMetal的博客',
      logo: '/images/logo.svg',
      items: [ThemeToggle()],
    ),
  ]);
}
