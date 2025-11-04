---
title: "这是一个测试"
description: "这一个基于Jaspr的测试markdown文件"
---

This is the starting point for your brand new documentation site, powered by the awesome `jaspr_content` package! Jaspr Content makes it easy to create beautiful and functional documentation. You can learn more about its features by visiting the [official documentation]({{links.docs}}).

## Getting Started

Here are a few things you can do to begin:

- Explore the features of `jaspr_content` inside `lib/main.dart`.
- Read the [Quick Start Guide]({{links.quickstart}}) to understand how to set up your your content-driven site.
- Start adding your own content pages in the `content/` directory.

## Showcase

`jaspr_content` supports all standard markdown syntax, allowing you to format your content effectively. It also supports adding custom components like this one:

<Info>
  这是一个自定义组件的例子. 你可以创建你自己的组件或者使用 `jaspr_content` 提供的组件来增强你的文档阅读力!

  <Clicker/>
</Info>

### Inline Elements

Use `inline code` for brief mentions of code, **bold text** for emphasis, or _italic text_ for highlighting. You can also create [links to external sites]({{links.website}}).

### FTSE

> "We can solve any problem by introducing an extra level of indirection." - Andrew Koenig

### Code Blocks

You can easily include code snippets. `jaspr_content` even comes with syntax highlighting and copy functionality out of the box.

```dart
// lib/main.dart
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_content/jaspr_content.dart';

void main() {
  runApp(ContentApp(
    parsers: [
      MarkdownParser(),
    ],
  ));
}
```

## Images

Displaying images is straightforward:

![Jasper Photo](https://jaspr.site/images/jasper_resized/17.webp)

You can even **zoom-in** by clicking on the image.

## More to Discover!

This is just a placeholder to get things started.

Feel free to explore the [Documentation]({{links.docs}}) to understand the underlying architecture and how you can customize your site further.

This documentation site is a fresh new project, lovingly crafted with the power of `jaspr_content`.

## About

Here are our socials, dynamically generated from the `site.yaml` data:

{{#site.social}}

- [{{name}}]({{url}})
  {{/site.social}}
