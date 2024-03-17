import "CoreLibs/graphics"

local gfx <const> = playdate.graphics
local screenWidth = playdate.display.getWidth()
local screenHeight = playdate.display.getHeight()
local font_8 = gfx.font.new('font/fusion-pixel-font-8px-proportional-zh_hans')
local font_10 = gfx.font.new('font/fusion-pixel-font-10px-proportional-zh_hans')
local font_12 = gfx.font.new('font/fusion-pixel-font-12px-proportional-zh_hans')
local font_24 = gfx.font.new('font/fusion-pixel-font-24px-proportional-zh_hans')
local font_24_lxwk = gfx.font.new('font/LXGWWenKaiGBScreen-24px-anti-aliasing')

function playdate.update()
    gfx.setFont(font_8)
    gfx.drawText('“如果你手里只有一把锤子，那么所有东西看上去都像是钉子。\n（If all you have is a hammer, everything looks like a nail.）”', 2, 2)

    gfx.setFont(font_10)
    gfx.drawText('“如果你手里只有一把锤子，那么所有东西看上去都像是钉子。\n（If all you have is a hammer, everything looks like a nail.）”', 2, 30)

    gfx.setFont(font_12)
    gfx.drawText('“如果你手里只有一把锤子，那么所有东西看上去都像是钉子。\n（If all you have is a hammer, everything looks like a nail.）”', 2, 60)

    gfx.setFont(font_24)
    gfx.drawText('“如果你手里只有一把锤子，那么所有东西看上去都像是钉子。\n（If all you have is a hammer, everything looks like a nail.）”', 2, 90)

    gfx.setFont(font_24_lxwk)
    gfx.drawText('“如果你手里只有一把锤子，那么所有东西看上去都像是钉子。\n（If all you have is a hammer, everything looks like a nail.）”', 2, 150)
end