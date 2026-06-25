---
title: 群与环
tags:
  - 离散数学
modified: 2026-06-25T08:56:45+08:00
---

## 半群与独异点

### 半群

### 独异点

## 群

群就是一个满足四条性质的代数系统

$$
\langle G,*\rangle
$$

若满足

1. 封闭性
    $$
    a,b\in G \Rightarrow a*b\in G
    $$
2. 结合律
    $$
    (a*b)*c=a*(b*c)
    $$
3. 有单位元 e
    $$
    a*e=e*a=a
    $$
4. 每个元素都有逆元
    $$
    \forall a\in G,\exists a^{-1}\in G,\quad a*a^{-1}=a^{-1}*a=e
    $$

$\langle \mathbb{Z},+\rangle$和$\langle \mathbb{Z}_n,+_n\rangle,\mathbb{Z}_n=\{0,1,2,\dots,n-1\}$是群

$\langle \mathbb{Z},\times\rangle$不是群，不是每个整数都有乘法逆元

## Abel 阿贝尔群

也称为可交换群

定义：给定群 $\langle G,\circ\rangle$，若 $\circ$ 是可交换的，则称它为 Abel 群。

## 群的重要性质

1. 群满足消去律
2. 群中方程有唯一解
3. 群中唯一的等幂元是幺元

## 元素的阶与群的阶

### 群的阶

群 G 中元素的个数叫群的阶，记作：|G|

### 元素的阶

设 a∈G，如果存在最小正整数 n，使得：aⁿ=e
那么称 n 是元素 a 的阶，记作：|a|=n

## 子群

## 陪集与拉格朗日定理

有限群 G 的任意子群 H 的阶数（元素个数），必定能整除群 G 的阶数。

## 循环群

如果群 G 中存在一个元素 a，使得 G 中每个元素都可以写成 a 的幂：

$$
G=\langle a\rangle=\{a^k\mid k\in \mathbb{Z}\}
$$

那么 G 是循环群，a 称为生成元。

## 置换群与对称群

置换就是集合到自身的双射。

## 群同态与群同构

## 环

## 域

域是比环更强的结构。
