# Create Chinese font for playdate

为 Playdate 生成中文字体

![screenshot](https://github.com/Antonoko/Chinese-font-for-playdate/blob/main/__asset__/screenshot.jpg)


## 已生成字体
一些已转换、可直接用在 playdate 上的字体。前往 [Release](https://github.com/Antonoko/Chinese-font-for-playdate/blob/main/release) 下载。
- [缝合像素字体 / Fusion Pixel Font](https://github.com/TakWolf/fusion-pixel-font/releases) 
    - fusion-pixel-font-8px-proportional-zh_hans
    - fusion-pixel-font-10px-proportional-zh_hans
    - fusion-pixel-font-12px-proportional-zh_hans
    - fusion-pixel-font-24px-proportional-zh_hans （在 12px 字体上以两倍大小渲染）


## 如何转换字体
1. 安装依赖 `pip install -r requirements.txt`；
2. 将准备生成的字体放在 `font_asset` 或其他目录下；
2. 使用 python jupyter notebook 环境执行 `make_font.ipynb`，填写字体文件、生成字号等信息，Run ALL 进行生成；
