copyright: true
abbrlink: 5129f3bd
title: 通过创作罗斯科绘画学习 CSS 盒子模型
date: '2024-09-16 11:18:02'
updated: '2024-09-16 11:18:04'
tags:
  - CSS
  - HTML
  - 记录
categories:
  - 前端
  - CSS
---
一种大胆且直白抽象的艺术
<!--more-->

# 效果

来自于[freecodecamp](https://www.freecodecamp.org/chinese/learn/2022/responsive-web-design/#learn-the-css-box-model-by-building-a-rothko-painting)

<style>
.canvas {
  width: 500px;
  height: 600px;
  background-color: #4d0f00;
  overflow: hidden;
  filter: blur(2px);
}

.frame {
  border: 50px solid black;
  width: 500px;
  padding: 50px;
  margin: 20px auto;
}

.one {
  width: 425px;
  height: 150px;
  background-color: #efb762;
  margin: 20px auto;
  box-shadow: 0 0 3px 3px #efb762;
  border-radius: 9px;
  transform: rotate(-0.6deg);
}

.two {
  width: 475px;
  height: 200px;
  background-color: #8f0401;
  margin: 0 auto 20px;
  box-shadow: 0 0 3px 3px #8f0401;
  border-radius: 8px 10px;
  transform: rotate(0.4deg);
}

.one, .two {
  filter: blur(1px);
}

.three {
  width: 91%;
  height: 28%;
  background-color: #b20403;
  margin: auto;
  filter: blur(2px);
  box-shadow: 0 0 5px 5px #b20403;
  border-radius: 30px 25px 60px 12px;
transform:rotate(-0.2deg);
}
</style>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Rothko Painting</title>
    <link href="./styles.css" rel="stylesheet">
  </head>
  <body>
    <div class="frame">
      <div class="canvas">
        <div class="one"></div>
        <div class="two"></div>
        <div class="three"></div>
      </div>
    </div>
  </body>
</html>

## index.html

基本都是div

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Rothko Painting</title>
    <link href="./styles.css" rel="stylesheet">
  </head>
  <body>
    <div class="frame">
      <div class="canvas">
        <div class="one"></div>
        <div class="two"></div>
        <div class="three"></div>
      </div>
    </div>
  </body>
</html>
```

## styles.css

```css
.canvas {
  width: 500px;
  height: 600px;
  background-color: #4d0f00;
  overflow: hidden;
  filter: blur(2px);
}

.frame {
  border: 50px solid black;
  width: 500px;
  padding: 50px;
  margin: 20px auto;
}

.one {
  width: 425px;
  height: 150px;
  background-color: #efb762;
  margin: 20px auto;
  box-shadow: 0 0 3px 3px #efb762;
  border-radius: 9px;
  transform: rotate(-0.6deg);
}

.two {
  width: 475px;
  height: 200px;
  background-color: #8f0401;
  margin: 0 auto 20px;
  box-shadow: 0 0 3px 3px #8f0401;
  border-radius: 8px 10px;
  transform: rotate(0.4deg);
}

.one, .two {
  filter: blur(1px);
}

.three {
  width: 91%;
  height: 28%;
  background-color: #b20403;
  margin: auto;
  filter: blur(2px);
  box-shadow: 0 0 5px 5px #b20403;
  border-radius: 30px 25px 60px 12px;
transform:rotate(-0.2deg);
}
```

# 闲话:什么是罗斯科

罗斯科（Mark Rothko）的艺术风格，作为20世纪抽象表现主义的重要代表之一，具有鲜明的特色和深远的影响。以下是对其艺术风格的详细解析：

## 一、色彩运用
大胆而纯净：罗斯科的作品以大胆且纯净的色彩著称，他善于使用饱和度高、对比强烈的色彩来营造强烈的视觉冲击力和情感共鸣。
色彩心理学：他深知每种色彩带给人的不同感受，并能巧妙地运用这些色彩来表达特定的情绪或氛围。例如，橙色和红色在他的作品中常被用来表达强烈的情感，如狂喜或愤怒。
层叠与渐变：通过色彩的层叠和渐变，罗斯科创造出丰富的色彩变化，使画面充满动感和生命力。
## 二、形状与构图
简化的几何形状：罗斯科的作品通常由简化的矩形或方形色块构成，这些形状之间存在着微妙的关系和平衡。他通过形状的排列和组合来创造视觉的动态和张力。
大尺寸画布：他倾向于使用大尺寸的画布进行创作，以便更好地将观者拉入画面所营造的情绪之中。这种大尺寸的画布也使得他的作品更具震撼力和感染力。
空间感：罗斯科在构图中注重空间感的营造，他通过色彩和形状的相互作用来创造出一种连绵不断、模棱两可的效果，使画面充满神秘感和深度。
## 三、情感与精神表达
表达人类基本情感：罗斯科认为艺术的核心在于表达人类的基本情感，如悲剧、狂喜、毁灭等。他通过色彩和形状的组合来触发观者的内心共鸣和情感体验。
冥想与宗教体验：他的作品常被视为一种冥想的媒介，引导观者进入一种宁静、沉思和超验的状态。罗斯科自己也曾表示，艺术的欣赏是一种心灵上的联姻，创作则是一个向内探索的过程。
精神内涵：罗斯科的艺术不仅关注表面的视觉效果，更注重作品背后的精神内涵和象征意义。他通过有限的色彩和极少的形状来反映深刻的象征意义，使作品具有深远的思考价值。
## 四、艺术历程与影响
艺术探索：罗斯科的艺术风格经历了从现实主义到表现主义、超现实主义再到抽象表现主义的转变。他不断尝试新的艺术语言和表达方式，最终形成了自己独特的艺术风格。
市场认可：尽管罗斯科在生前并未获得广泛的市场认可，但随着时间的推移，他的作品逐渐得到了艺术界和市场的重视。如今，他的作品已成为艺术市场上的高价拍品之一。
艺术影响：罗斯科的艺术风格对后来的艺术家产生了深远的影响，他的创作理念和艺术手法被许多艺术家所借鉴和发扬。
# 综上所述
罗斯科的艺术风格以大胆的色彩运用、简化的几何形状、强烈的情感与精神表达为特点，他的作品不仅具有极高的艺术价值，更在艺术史上留下了浓墨重彩的一笔。