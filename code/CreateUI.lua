--# CreateUI
function CreateUI()
    alpha={tinta=255,tintb=0,tintc=0,tintd=255,tinte=30}
    weaponrange={1,1,2,3,3,5,4}
    t=0
    s=0
    ka=0
    min=0
    fin=0
    ttt=0
    hold=0
    pmet=0
    hide=0
    lock=0
    tturn=0
    light={0,0,0,0,0,0,0}
    choose=0
    attack=0
    crecord=0
    pressed2=0
    pressed3=0
    pressed4=0
    pressable=0
    finalhold=0
    playernum=5
    pressable2=0
    edge=1
    length={a=-1/2*WIDTH}
    turn=1
    dice=Dice()
    playerchess={
    CharacterChess(1),
    CharacterChess(2),
    CharacterChess(3),
    CharacterChess(4),
    CharacterChess(5)
    }
    player={
    Character(1),
    Character(2),
    Character(3),
    Character(4),
    Character(5),
    }
end

function UIDraw()
    drawchess()
    for i=1,5 do
        playerchess[i]:draw()
    end
    if edge==1 then
        sprite("Documents:Board_All",250,90,500)
        status(attack)
        --sprite("Documents:Board_Select",283,27,280)
        dice:draw()
        player[turn]:draw(WIDTH-160,330,400)
    end
end

function status(a)
    textMode(CENTER)
    fontSize(30)
    fill(40,40,50,180)
    font("GillSans-Bold")
    if a==0 then
        text("Player"..turn.." "..":".." ".."playing",280,28)
    elseif a==1 then
        text("Player"..hold.." "..":".." ".."SHOOT",280,28)
    elseif a==2 then
        text("Player"..finalhold.." "..":".." ".."AIM",280,28)
    elseif a==3 then
        text("Player"..hold.." "..":".." ".."ASSAULT",280,28)
    elseif a==4 then
        text("Player"..hold.." "..":".." ".."FIRE",280,28)
    elseif a==5 then
        text("Player"..finalhold.." "..":".." ".."DUEL",280,28)    
    elseif a==6 then
        text("Player"..turn.." "..":".." ".."JAIL",280,28)
    elseif a==7 then
        text("Player"..turn.." "..":".." ".."DYNAMITE",280,28)
    end
end
