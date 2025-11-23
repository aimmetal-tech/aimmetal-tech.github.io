---
title: Better Flutter
description: 插件、依赖dependences、Widget、语法糖推荐
---

## 插件（Extension）🧩

以下都是 VS Code 插件

- Awesome Flutter Snippets

  缩写创建一大串 stateless、stateful 类模板

- Better Comments

  让你的注释有更多颜色

- Dart Data Class Generator

  根据成员变量快速生成构造函数以及构造工厂函数 `fromJson()`和 `ToJson()`

- Error Lens

  让你的报错信息直接展示在代码中

- Image preview

  让图片预览出现在代码最左侧

- Material Icon Theme

  让你的文件夹呈现不同的颜色和图标，便于区分

- Pubspec Assist

  快速添加依赖和开发依赖，免去手动复制粘贴

- Todo Tree

  方便查看漏掉的 Todo 注释

## 依赖 Dependences 📦

- json_serializable

  搭配网站`https://app.quicktype.io/`使用,

  粘贴后端返回 JSON，获取对应代码,

  自动生成 `fromJson()` 和 `toJson()` 方法

- riverpod

  响应式缓存与数据绑定框架

- introduction_screen

  快速搭建软件使用前的介绍页面

- flutter_spinkit

  提供多种加载动画

- ffigen

  自动生成 FFI 绑定的工具, 用于调用 C/C++函数

## Widget

- SliverAppBar

  在 `CustomScrollView` 的 `slivers` 中传入。可实现折叠 AppBar 功能

## 语法糖

- `??=` 当空时才赋值

```
// sugar
a ??= b;

// equal
if (a == null) {
  a = b;
}
```

- `...` 展开运算符

```
var a = [1, 2, 3];
var b = [0, ...a, 4];
print(b); // [0, 1, 2, 3, 4]
```

- `..` 级联运算符，对同一个对象连续调用多个方法、设置多个属性，而不需要重复对象变量

```
// sugar
object
  ..method1()
  ..method2()
  ..property = value;

// equal
object.method1();
object.method2();
object.property = value;
```
