---
copyright: true
title: hexo-next在侧边栏添加IP信息
date: '2024-09-14 18:38:52'
updated: '2024-09-14 18:38:55'
tags:
  - hexo
  - 博客教程
  - 教程
  - 记录
  - 第一次
categories:
  - 基于hexo的博客搭建教程
abbrlink: 69cc9e5f
---
显示如下
 <a href="https://tool.lu/ip/">
    <img src="https://tool.lu/netcard/">
</a>

<!--more-->

## 使用第三方IP签名图
> 此处感谢[在线工具](https://tool.lu/)网站
    [![](images/IP/whereip.png)](https://tool.lu/)
>别忘了站长的警告： ⚠️请勿将本页面作为api使用，当请求量过高时，系统会限制访问！
如图所示，该IP签名图可以使用四种代码进行引用，这里我们使用html代码。

## 在本地文件找到侧边栏设计代码
路径是
`blog\themes\next\layout\_macro\sidebar.swig`

接下来你可以使用我的html代码直接插入到下面的位置

>我的代码
```html
  <div class="where is your ip">
    <h3>访客信息</h3>
    <a href="https://tool.lu/ip/">
    <img src="https://tool.lu/netcard/">
    </a>
  </div>
```
>插入的位置大概是这里
```html
 <!--noindex-->
      <div class="post-toc-wrap sidebar-panel">
        {%- if display_toc %}
          <div class="post-toc motion-element">{{ toc }}</div>
        {%- endif %}
      </div>
      <!--/noindex-->

      <div class="site-overview-wrap sidebar-panel">
        {{ partial('_partials/sidebar/site-overview.swig', {}, {cache: theme.cache.enable}) }}

        {{- next_inject('sidebar') }}
      </div>
<--插入的位置-->
        <div class="where is your ip">
    <h3>访客信息</h3>
    <a href="https://tool.lu/ip/">
    <img src="https://tool.lu/netcard/">
    </a>
  </div>
<--插入的位置-->
      {%- if theme.back2top.enable and theme.back2top.sidebar %}
        <div class="back-to-top motion-element">
          <i class="fa fa-arrow-up"></i>
          <span>0%</span>
        </div>
      {%- endif %}

    </div>
  </aside>
  <div id="sidebar-dimmer"></div>
{% endmacro %}

```

### 如果你有html基础


