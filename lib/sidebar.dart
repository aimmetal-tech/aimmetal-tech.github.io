import 'package:jaspr_content/components/sidebar.dart';

Sidebar sidebar() {
  return Sidebar(
    groups: [
      // SideBarGroup是一个组
      SidebarGroup(
        links: [
          SidebarLink(text: "概览", href: '/'),
        ],
      ),
      SidebarGroup(
        title: 'Flutter系列',
        links: [
          SidebarLink(text: "Flutter入门", href: '/flutter/flutter-get-started'),
          SidebarLink(text: "Flutter Riverpod", href: '/flutter/flutter-riverpod'),
        ],
      ),
      SidebarGroup(
        title: '数据结构',
        links: [
          SidebarLink(text: "第3章 树", href: 'data-structure/chapter-3-tree'),
        ],
      ),
      SidebarGroup(
        links: [
          SidebarLink(text: "关于", href: '/about'),
        ],
      ),
    ],
  );
}
