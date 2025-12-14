// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.
import 'package:jaspr/server.dart';

import 'package:jaspr_content/components/callout.dart';
import 'package:jaspr_content/components/code_block.dart';
import 'package:jaspr_content/components/image.dart';
import 'package:jaspr_content/jaspr_content.dart';
import 'package:jaspr_content/theme.dart';
import 'package:blog_of_aimmetal/docs_layout.dart';

import 'components/clicker.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  runApp(MyApp());
}

class MyApp extends StatelessComponent {
  const MyApp();

  @override
  Component build(BuildContext context) {
    // [ContentApp] 从 jaspr_content 启动内容渲染管线, 
    //用于渲染你在 content/ 目录下的 markdown 文件, 使其成为一个漂亮的文档网站.
    return ContentApp(
      // Enables mustache templating inside the markdown files.
      templateEngine: MustacheTemplateEngine(),
      parsers: [
        MarkdownParser(),
      ],
      extensions: [
        // Adds heading anchors to each heading.
        // 给markdown里生成的每个标题自动加上可点击的连接
        HeadingAnchorsExtension(),
        // 为每一页生成内容目录的插件TableOfContentsExtension().
        TableOfContentsExtension(),
      ],
      components: [
        // The <Info> block and other callouts.
        Callout(),
        // Adds syntax highlighting to code blocks.
        CodeBlock(),
        // Adds a custom Jaspr component to be used as <Clicker/> in markdown.
        CustomComponent(
          pattern: 'Clicker',
          builder: (_, _, _) => Clicker(),
        ),
        // Adds zooming and caption support to images.
        Image(zoom: true),
      ],
      layouts: [
        docsLayout()
      ],
      theme: ContentTheme(
        // 自定义默认主题颜色.
        primary: ThemeColor(ThemeColors.blue.$500, dark: ThemeColors.blue.$300),
        background: ThemeColor(ThemeColors.slate.$50, dark: ThemeColors.zinc.$950),
        colors: [
          ContentColors.quoteBorders.apply(ThemeColors.blue.$400),
        ],
      ),
    );
  }
}
