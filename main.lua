-- DATA SECTION


player = {
          x=10,
          y=10,
          name="Stranger",
          hpmax=300,
          hpcurrent=300,
          time=0,
          is_slowed = false
  
  }

map_overworld = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 12, 5, 5, 5, 4, 5, 5, 5, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 4, 4, 4, 5, 5, 5, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 5, 5, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 6, 5, 5, 4, 14, 15, 16, 5, 5, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 6, 6, 6, 6, 5, 4, 4, 5, 5, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 6, 7, 7, 7, 6, 5, 5, 5, 5, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 6, 6, 7, 7, 7, 6, 5, 5, 5, 5, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 5, 5, 8, 8, 7, 7, 7, 7, 6, 5, 5, 5, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 5, 5, 8, 9, 8, 7, 7, 7, 6, 5, 5, 5, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 5, 5, 5, 8, 9, 8, 7, 7, 7, 6, 5, 5, 5, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 5, 5, 5, 8, 9, 8, 6, 6, 6, 6, 5, 5, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 5, 11, 5, 8, 9, 8, 6, 6, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 8, 5, 5, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
      }







function init_graphics()
  -- set Graphics Mode
  success = love.window.setMode(640,400)
  
  -- set Scaling to nearest
  love.graphics.setDefaultFilter("nearest")
  
  -- set Scale
  scaler = 2
  
 end
 
 
function draw_gui()
     love.graphics.draw(gui,0,0,0) 
end


function love.load()
love.graphics.setDefaultFilter("nearest","nearest")

-- load artwork assets
-- Tileset
tileset = love.graphics.newImage("assets/tilesets/shapes.png")

-- define Quads
  local tileW = 16
  local tileH = 16
  local tilesetW = tileset:getWidth()
  local tilesetH = tileset:getHeight()
  
  tile = {}
  
  for i=0, 255 do
   tile[i] = love.graphics.newQuad(0,i*tileH, tileW, tileH, tilesetW, tilesetH)
  end

-- GUI elements
gui = love.graphics.newImage("assets/sprites/gui.png")
init_graphics()
end


function inTable(tbl, item)
    for key, value in pairs(tbl) do
        if value == item then return true end
    end
    return false
end


function gettileid(tx,ty)
  local i=(tx+ty*25)+1
  local id=map_overworld[i]-1
return id
end

function traversable(px,py)
blocked = {0,1,2,8}
tileid = gettileid(px,py)
if inTable(blocked, tileid)==true then 
  return false 
else
  return true
end
end

function slowed(px,py)
blocked = {0,1,2,8}
slow = {6,7}
tileid = gettileid(px,py)
if  inTable(slow,tileid)==true then 
  return true
else 
  return false 
  end
end


function move_player(tx,ty)
  if traversable(tx,ty)==true and slowed(tx,ty)==false then
  player.x=tx
  player.y=ty
  player.is_slowed=false
elseif traversable(tx,ty)==true and slowed(tx,ty)==true and player.is_slowed==true then
  player.x=tx
  player.y=ty
  player.is_slowed=false
elseif traversable(tx,ty)==true and slowed(tx,ty)==true and player.is_slowed==false then     
  player.is_slowed=true
 end

player.time=player.time+1

end

 
function love.keypressed( key )
   if key == "ESC" then
      love.quit()
   end
   
   if key == "up" then
     move_player(player.x,player.y-1)
   elseif key=="down" then
   move_player(player.x,player.y+1)
 elseif key=="left" then
   move_player(player.x-1,player.y)
 elseif key=="right" then
   move_player(player.x+1,player.y)
   end
   

end


function draw_map(tx,ty)
  
love.graphics.translate(-(tx-5)*16,-(ty-5)*16)
  
for x = 0,24 do
  for y = 0,24 do
    id=gettileid(x,y)
    draw_tile(x,y,id)
  end
end




end

function draw_info()
  local i=(player.x+player.y*25)+1
  local id=map_overworld[i]-1
  local text = "Tile ID: " .. id
  love.graphics.print(text, 400, 136)
  love.graphics.draw(tileset, tile[id], 466, 136)
  
  
  text = player.name
  love.graphics.print(text, 400, 32)
  
  text = "Time: "..player.time
  love.graphics.print(text, 168, 3)
  
  if player.is_slowed==true then
    love.graphics.print(" Slowed", 480, 136)
    
  elseif player.is_slowed==false then
    love.graphics.print("", 480, 136)
    end
  
  end


function draw_tile(tx,ty,tileid)
local ox =8 
local oy =8 
love.graphics.draw(tileset, tile[tileid], tx*16+ox, ty*16+oy)

  end



function love.update(dt)
end


function love.draw()
love.graphics.push()
  
love.graphics.scale(scaler,scaler)


--draw_tile(0,0,0)
draw_map(player.x,player.y)
draw_tile(player.x,player.y,31)

love.graphics.pop()
draw_gui()
draw_info()
end


  
  