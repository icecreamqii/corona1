
-- Abstract: Hello World
-- Version: 2.0
-- Sample code is MIT licensed; see https://www.coronalabs.com/links/code/license
---------------------------------------------------------------------------------------

--local world1 = display.newImageRect( "world.png", 200, 200 )
--world1.x = display.contentCenterX
--world1.y = display.contentCenterY 


local msgText = display.newText( "Hello, World!", display.contentCenterX, display.contentHeight*0.5, native.systemFont, 60 )
msgText:setFillColor( 0.2, 1.0, 0.8 )

local msgText = display.newText( "Hello, World!", display.contentCenterX, display.contentHeight*0.85, native.systemFont, 60 )
msgText:setFillColor( 1.0, 0.6, 0.8 )
