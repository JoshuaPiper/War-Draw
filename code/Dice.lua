--# Dice
Dice = class()

function Dice:init()
    -- you can accept and set parameters here
    self.pressed=0
    self.pressed2=0
    self.playermove=0
end

function Dice:draw()
    -- Codea does not automatically call this method
    math.randomseed(math.random(1,1000))
    if self.pressed==0 then
        self.d = math.floor(math.random(1,6))
    end
    if self.d>=1 and self.d<2 then
        sprite("Documents:Dice1",52,62,150)
    elseif self.d>=2 and self.d<3 then
        sprite("Documents:Dice2",52,62,150)
    elseif self.d>=3 and self.d<4 then
        sprite("Documents:Dice3",52,62,150)
    elseif self.d>=4 and self.d<5 then
        sprite("Documents:Dice4",52,62,150)
    elseif self.d>=5 and self.d<6 then
        sprite("Documents:Dice5",52,62,150)
    elseif self.d>=6 and self.d<7 then
        sprite("Documents:Dice6",52,62,150)
    elseif self.d<1 then
        sprite("Documents:Dice0",52,62,150)      
    end
end

function Dice:touched(touch)
    -- Codea does not automatically call this method
    if CurrentTouch.x<=100 and CurrentTouch.y<=100 and CurrentTouch.state==BEGAN then
        self.pressed = self.pressed + 1
        self.pressed2 = 1
        --sound(SOUND_RANDOM, 34851)
    end

end
