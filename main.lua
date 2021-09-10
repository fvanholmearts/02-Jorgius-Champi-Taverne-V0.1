------------------------------------------------------------------------------------------------
--- INFO --- SCREEN --- GAME ENGINE --- FV Art's -----------------------------------------------
-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')
-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
  if arg[#arg] == "-debug" then require("mobdebug").start() end
love.window.setTitle("La Champi-Taverne de Jorgius - I (c) - 2021 FV Art's Games")
love.window.setMode(1024, 768, {fullscreen=false, vsync=true}) --, winwidth=1024, winheight=768})
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
--- Gameplay La Champi-Taverne de Jorgius - I ---

--- raquette ---

local raquette

  pRaquette = {}
  pRaquette.x = 0
  pRaquette.y = 0
  pRaquette.largeur = 80
  pRaquette.hauteur = 80


function love.load()
  
  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()
  print("largeur", largeur)
  print("hauteur", hauteur)
  
  raquette = love.graphics.newImage("images/GC-tile-pad.png")
  pRaquette.y = (hauteur - 10) - pRaquette.hauteur

end

function love.update(dt) 

  pRaquette.x = love.mouse.getX()
  
end

function love.draw() 
  
  love.graphics.draw(raquette, pRaquette.x, pRaquette.y)
  
end

function love.mousepressed(x, y, n) 
  
  
end

function love.keypressed(key) 
  
  
  
end