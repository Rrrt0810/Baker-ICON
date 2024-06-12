### 初步完成Baker ICON项目的demo

### 目前完成四个菜单栏页面的开发

- Icons页面
- Stickers页面
- Top页面
- More页面

### 用到的:

- Flutter Widget 基础：
  * StatelessWidget：创建一个无状态的widget，HomePage继承自StatelessWidget。
  * Scaffold：一个Material Design布局结构的基本实现，提供默认的导航栏、标题和背景颜色。
  * Container：用于创建一个带有指定背景色和子widget的容器。
- 布局与对齐：
  * Padding：用于给子widget添加内边距。
  *Column和Row：垂直和水平布局的容器，包含多个子widget。
  * CrossAxisAlignment和MainAxisAlignment：用于控制子widget在垂直和水平方向的对齐方式。
  * SizedBox：用于添加固定尺寸的空白间距。
- 文本样式：
  * Text：用于显示文本。
  * TextStyle：用于定义文本的样式属性，如字体大小、颜色等。 
- 静态资源管理：
  * AssetImage：用于加载静态资源图片。
  * Icons：Flutter内置的一些图标，可以直接使用。

### 不足的：
- 页面的组件化程度不够完善
- 页面的资源加载还是基于本地资源
- 对于屏幕的适配还需要进一步的优化