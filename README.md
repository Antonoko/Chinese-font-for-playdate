# Create Chinese font for Playdate

为 Playdate 生成中文字体

![screenshot](https://github.com/Antonoko/Chinese-font-for-playdate/blob/main/__asset__/screenshot.jpg)


## 已生成字体
一些已转换、可直接用在 playdate 上的字体。前往 [Release](https://github.com/Antonoko/Chinese-font-for-playdate/blob/main/release) 下载。
- [缝合像素字体 / Fusion Pixel Font](https://github.com/TakWolf/fusion-pixel-font/releases) 
    - fusion-pixel-font-8px-proportional-zh_hans
    - fusion-pixel-font-10px-proportional-zh_hans
    - fusion-pixel-font-12px-proportional-zh_hans
    - fusion-pixel-font-24px-proportional-zh_hans （在 12px 字体上以两倍大小渲染）
- [LXGW WenKai Screen / 霞鹜文楷屏幕阅读版](https://github.com/lxgw/LxgwWenKai-Screen?tab=readme-ov-file)
    - LXGWWenKaiGBScreen-24px


## 如何转换字体
1. Clone 仓库到本地: `git clone https://github.com/Antonoko/Chinese-font-for-playdate`
2. 安装依赖 `pip install -r requirements.txt`；
3. 将准备生成的字体放在 `font_asset` 或其他目录下；
4. 使用 python jupyter notebook 环境执行 `make_font.ipynb`，填写字体文件、生成字号等信息，Run ALL 进行生成；


## 如何使用字体
根据 (Playdate 文档)[https://sdk.play.date/2.4.1/Inside%20Playdate.html#_text] 正常引入使用即可。

```lua
import "CoreLibs/graphics"
local gfx <const> = playdate.graphics
local font_12 = gfx.font.new('font/fusion-pixel-font-12px-proportional-zh_hans')

function playdate.update()
    gfx.setFont(font_12)
    gfx.drawText('你好世界', 2, 2)
end
```