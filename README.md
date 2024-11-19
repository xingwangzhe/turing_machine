# 图灵机模型
## 许可 : [MIT](LICENSE)

##在线使用地址
[https://xingwangzhe.itch.io/turing-machine](https://xingwangzhe.itch.io/turing-machine)

## 设计思路

使用godot来做ui界面，主体语言是gdscript(一个类似python的语言)

这些都是单纸带模型，不难想到可以抽象成字符串数组（String）

关键的状态转移函数就是对字符串数组进行操作，一般接受两个参数，状态(state:int),位置(pos:int),有的还需要有记录(retain:string),

通过对text[pos]进行操作来实现字符串的变化.

~~曾经尝试通过在索引处改变字符的颜色来实现改变，但是在godot中，作为存在于字符串的单个字符，无法使用对象方法单独设置颜色，如果使用BBcode,这会破坏索引，故改用等宽字体，两行对齐来实现索引变化~~

