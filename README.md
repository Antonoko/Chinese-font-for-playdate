# Create Chinese font for Playdate

为 Playdate 生成中文字体

![screenshot](https://github.com/Antonoko/Chinese-font-for-playdate/blob/main/__asset__/screenshot.jpg)


## 已生成字体
一些已转换、可直接用在 Playdate 上的字体。前往 [Release](https://github.com/Antonoko/Chinese-font-for-playdate/blob/main/release) 下载。
- [缝合像素字体 / Fusion Pixel Font](https://github.com/TakWolf/fusion-pixel-font/releases) 
    - fusion-pixel-font-8px-proportional-zh_hans
    - fusion-pixel-font-10px-proportional-zh_hans
    - fusion-pixel-font-12px-proportional-zh_hans
    - fusion-pixel-font-24px-proportional-zh_hans （在 12px 字体上以两倍大小渲染）
- [LXGW WenKai Screen / 霞鹜文楷屏幕阅读版](https://github.com/lxgw/LxgwWenKai-Screen?tab=readme-ov-file)
    - LXGWWenKaiGBScreen-24px
    - LXGWWenKaiGBScreen-24px-anti-aliasing （抗锯齿版本）
- SourceHanSansCN / 思源黑体
    - SourceHanSansCN-M-24px
- OPPOSans
    - OPPOSans-M-24px
- Apple
    - PingFang-M-24px


## 如何转换字体
1. Clone 仓库到本地: `git clone https://github.com/Antonoko/Chinese-font-for-playdate`
2. 安装依赖 `pip install -r requirements.txt`
3. 准备要生成的字体文件（如.ttf），放在 `font_asset` 或其他目录下；
4. 使用 python jupyter notebook 环境执行 `make_font.ipynb`，填写字体文件路径、生成字号等信息，Run ALL 进行生成；
5. 执行 `rotate_font_direction.ipynb` 可以 +90°/-90°/180° 旋转字体，以适应为不同方向制作的 Playdate 程序；

> [!TIP]
>
> 如果你只需要显示一部分的中文文字，可以自定义 TEXT_TABLE_STR 来覆盖仅会用到的文本，以降低储存与性能开销、同时使所有文字都能正常显示。

> [!IMPORTANT]
>
> 欢迎通过 issue/PR 提交你生成的新字体，我们会将它放在 release 文件夹下提供。😉（如有使用 license 也请一并附上）

## 如何使用字体
根据 [Playdate 文档](https://sdk.play.date/2.4.1/Inside%20Playdate.html#_text) 正常引入使用即可。

```lua
import "CoreLibs/graphics"
local gfx <const> = playdate.graphics
local font_12 = gfx.font.new('font/fusion-pixel-font-12px-proportional-zh_hans')

function playdate.update()
    gfx.setFont(font_12)
    gfx.drawText('你好世界', 2, 2)
end
```