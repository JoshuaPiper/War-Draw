--# Main
-- Chess
displayMode(FULLSCREEN)
supportedOrientations(LANDSCAPE_ANY)

-- Use this function to perform your initial setup
function setup()
    CreateDatabase()
    CreateUI()
    music("Game Music One:Jungle Rampage",true,0.5)
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)
    tint(alpha.tintd,alpha.tinta)
    sprite("Documents:Background_White",1/2*WIDTH,1/2*HEIGHT,WIDTH)
    tint(255,alpha.tintb)
    sprite("Documents:Background_Grey",1/2*WIDTH,1/2*HEIGHT,WIDTH)
    tint(255,alpha.tintc)
    sprite("Documents:Background_Black",1/2*WIDTH,1/2*HEIGHT,WIDTH)
    tint(alpha.tintd)
    UIDraw()

    -- This sets the line thickness
    strokeWidth(5)

    -- Do your drawing here
    
end

function touched(touch)
    touchchess()
    dice:touched(touch)
    for i =1,5 do
        playerchess[i]:touched(touch)        
    end

end
