require ("table")
require ("math")

col_lightgrey={150, 150, 150, 255}
col_red={255,0,0,255}


dtotal = 0
dtotal2 = 0

cframe = 0  
delay = 0.5

-- DATA SECTION

log={"Welcome!"," ","Music by Eric Matyas","www.soundimage.org"," "," "," "," "," "," "," "," "}


mob ={}

bandit = {
         x=10,
         y=15,
         name="Bandit",
         hpmax=150,
         hp=150,
         tile={200,201}
         }


player = {
          x=10,
          y=10,
          name="Stranger",
          hpmax=300,
          hp=300,
          time=0,
          is_slowed = false,
          tile = {32,33},
          status="G",
          current_map = {}
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
  
  
  player.current_map=map_overworld
  spawn_monster(bandit,9,4)
 end
 
 
 -- gamestate = "INTRO"
 gamestate = "INTRO"
 
function draw_gui()
     love.graphics.draw(gui,0,0,0) 
end




function love.load()
-- Load Music, SFX, all that jazz

local m1="assets/sound/Trouble-in-the-Kingdom_Looping.mp3"
music_01 = love.audio.newSource(m1,"stream")
music_01:setLooping(true)

music_02 = love.audio.newSource("assets/sound/RPG-Map-Music.mp3","stream")
music_02:setLooping(true)


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
  local id=player.current_map[i]-1
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

function check_d6(dv)
roll = math.random (6)

add_to_log("Roll: "..roll)

if roll>=dv then 
  return true 
else return false 
  end
end

function check_ground(px,py)
tileid = gettileid(px,py)
if tileid == 3 then 
  -- check for poison
  if player.status~="P" and check_d6(2)==false then 
    player.status="P" 
    add_to_log({col_red,"Poisoned!"})
    end
end  
end


function status()


-- Poison Effect
if player.status=="P" then
  player.hp=player.hp-5
end


end

function move_player(tx,ty)
  if traversable(tx,ty)==true and slowed(tx,ty)==false then
  player.x=tx
  player.y=ty
  player.is_slowed=false
  player.time=player.time+1
elseif traversable(tx,ty)==true and slowed(tx,ty)==true and player.is_slowed==true then
  player.x=tx
  player.y=ty
  player.is_slowed=false
  player.time=player.time+1
  elseif traversable(tx,ty)==true and slowed(tx,ty)==true and player.is_slowed==false then     
  player.is_slowed=true
  add_to_log({col_lightgrey,"Slow Progress!"})
  player.time=player.time+1
elseif traversable(tx,ty)==false then
  add_to_log({col_lightgrey,"Blocked!"})
end

check_ground(player.x,player.y)
status()
end

 
function love.keypressed( key )
  dtotal = 0
  
  if gamestate=="INTRO" then
    
    if key=="return" then
      music_01:stop()
      gamestate="MAP"
      --music_02:play()
      end  
    
    if key=="escape" then
      love.event.quit() 
    end  
    
    
  end
  
  
  
  if gamestate=="MAP" then
  
  

   
      
   if key == "up" then
     move_player(player.x,player.y-1)
     add_to_log("North")
   elseif key=="down" then
   move_player(player.x,player.y+1)
   add_to_log("South")
 elseif key=="left" then
   move_player(player.x-1,player.y)
   add_to_log("West")
 elseif key=="right" then
   move_player(player.x+1,player.y)
   add_to_log("East")
  elseif key=="escape" then
      music_02:stop()
      gamestate="INTRO"
      --music_01:play()
   end
   

   
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





function draw_log()
  for i=1, table.getn(log) do
  love.graphics.printf(log[i],400,176+i*16,220)  
  end
end

function add_to_log(text)
table.remove(log,1)
table.insert(log,text)
end

function draw_info()
  local i=(player.x+player.y*25)+1
  local id=player.current_map[i]-1
  local text = "Tile ID: " .. id
  love.graphics.print(text, 400, 136)
  love.graphics.draw(tileset, tile[id], 466, 136)
  
  text="X: "..player.x..", Y: "..player.y
  love.graphics.print(text, 532, 136)
  
  text = "1 - "..player.name
  text2 = player.hp .. "/" .. player.hpmax .. player.status
  love.graphics.print(text, 400, 32)
  love.graphics.printf(text2, 400, 32,200,"right")
  
  text = "Time: "..player.time
  love.graphics.print(text, 168, 3)
    
  end


function draw_tile(tx,ty,tileid)
local ox =8 
local oy =8 
love.graphics.draw(tileset, tile[tileid], tx*16+ox, ty*16+oy)

end



function spawn_monster(enemy,x,y)
enemy.x=x
enemy.y=y
table.insert(mob, enemy)
end

function remove_monster(enemy,x,y)
table.remove(mob, enemy)
end

function draw_player(x,y)
animate_tiles({player.tile[1],player.tile[2]},player.x*16+8,player.y*16+8)  
end

function draw_mob(monster)
animate_tiles({monster.tile[1],monster.tile[2]},monster.x*16+8,monster.y*16+8)
end

function draw_enemies()
n=table.getn(mob)
for i=1,n do
  draw_mob(mob[i])
end  

end



function animate_tiles(frame_ids,x,y)


local totalframes = table.getn(frame_ids)
  
love.graphics.draw(tileset, tile[frame_ids[cframe+1]], x, y) 




if dtotal2 > delay then
cframe=cframe+1
dtotal2=dtotal2-delay
end

if cframe>=totalframes then cframe=0 end
 

  
end




function pass_time()

if dtotal >= 5 then 
  dtotal=dtotal-5
  player.time=player.time+1
  add_to_log("Pass")
  status()
end
end

function love.update(dt)
dtotal = dtotal + dt
dtotal2 = dtotal2 + dt



if gamestate == "MAP" then
  
  pass_time()
  
end  

end

function printtile(text,x,y)
  
  length = string.len(text)
  
  
  for i=1,length do
    
    character = string.sub(text,i)
    byten=string.byte(character)
    if byten==32 then byten=91 end
    love.graphics.draw(tileset, tile[byten+31], x+i*16, y)
    
  end
  
end




function draw_intro()
 love.graphics.push()
 --music_01:play()
 love.graphics.scale(scaler,scaler)
 
 animate_tiles({138,139},10,10)
 animate_tiles({84,85},294,10)
 animate_tiles({82,83},10,174)
 animate_tiles({94,95},294,174)
 
 text = "PROJECT ULTIMALIKE"
 printtile (text,2,40)
 love.graphics.pop() 

 
 love.graphics.print ("Press ENTER to start",260,160)
  love.graphics.print ("Press ESCAPE to quit",260,180) 
  
  
 
end



function draw_mapstuff()
love.graphics.push()
love.graphics.scale(scaler,scaler)



draw_map(player.x,player.y)
draw_enemies()
draw_player(player.x,player.y)
love.graphics.pop()
-- draw_gui()
draw_info()
draw_log()

end



function love.draw()

if gamestate == "MAP" then
draw_mapstuff()
end

if gamestate == "INTRO" then 
draw_intro()
end

  end
  