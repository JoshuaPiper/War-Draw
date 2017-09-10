--# CreateDatabase
function CreateDatabase()
    w=1/2*WIDTH
    h=1/2*HEIGHT
    ix=158
    iy=158
    c={
    ChessProduction(w-ix,h,0,5),
    ChessProduction(w,h,1,2),
    ChessProduction(w+ix,h,2,1),
    ChessProduction(w+2*ix,h,18,1),
    ChessProduction(w+3*ix,h,1,3),
    ChessProduction(w+4*ix,h,2,4),
    ChessProduction(w+5*ix,h,21,5),
    ChessProduction(w+6*ix,h,2,4),
    ChessProduction(w+7*ix,h,23,1),
    ChessProduction(w+8*ix,h,5,1),--10
    ChessProduction(w+8*ix,h+iy,2,4),
    ChessProduction(w+8*ix,h+2*iy,14,3),
    ChessProduction(w+8*ix,h+3*iy,4,5),
    ChessProduction(w+8*ix,h+4*iy,1,4),
    ChessProduction(w+8*ix,h+5*iy,24,2),
    ChessProduction(w+7*ix,h+5*iy,1,1),
    ChessProduction(w+6*ix,h+5*iy,6,3),
    ChessProduction(w+5*ix,h+5*iy,22,1),
    ChessProduction(w+4*ix,h+5*iy,3,5),
    ChessProduction(w+3*ix,h+5*iy,2,4),--20
    ChessProduction(w+3*ix,h+6*iy,8,2),
    ChessProduction(w+3*ix,h+7*iy,24,3),
    ChessProduction(w+4*ix,h+7*iy,5,1),
    ChessProduction(w+5*ix,h+7*iy,2,4),
    ChessProduction(w+6*ix,h+7*iy,12,5),
    ChessProduction(w+7*ix,h+7*iy,9,2),
    ChessProduction(w+8*ix,h+7*iy,1,3),
    ChessProduction(w+8*ix,h+8*iy,3,1),
    ChessProduction(w+8*ix,h+9*iy,8,4),
    ChessProduction(w+8*ix,h+10*iy,2,4),--30
    ChessProduction(w+7*ix,h+10*iy,19,5),
    ChessProduction(w+6*ix,h+10*iy,13,3),
    ChessProduction(w+5*ix,h+10*iy,21,1),
    ChessProduction(w+4*ix,h+10*iy,4,2),
    ChessProduction(w+3*ix,h+10*iy,1,1),
    ChessProduction(w+3*ix,h+11*iy,9,3),
    ChessProduction(w+3*ix,h+12*iy,22,5),
    ChessProduction(w+4*ix,h+12*iy,3,4),
    ChessProduction(w+5*ix,h+12*iy,2,1),
    ChessProduction(w+6*ix,h+12*iy,20,3),--40
    ChessProduction(w+7*ix,h+12*iy,7,1),
    ChessProduction(w+8*ix,h+12*iy,1,2),
    ChessProduction(w+8*ix,h+13*iy,16,5),
    ChessProduction(w+8*ix,h+14*iy,24,3),
    ChessProduction(w+7*ix,h+14*iy,1,3),
    ChessProduction(w+6*ix,h+14*iy,10,4),
    ChessProduction(w+5*ix,h+14*iy,11,1),
    ChessProduction(w+4*ix,h+14*iy,2,4),
    ChessProduction(w+3*ix,h+14*iy,12,5),
    ChessProduction(w+2*ix,h+14*iy,3,1),--50
    ChessProduction(w+ix,h+14*iy,1,2),
    ChessProduction(w,h+14*iy,17,3),
    ChessProduction(w,h+13*iy,1,4),
    ChessProduction(w,h+12*iy,6,3),
    ChessProduction(w,h+11*iy,4,5),
    ChessProduction(w,h+10*iy,5,3),
    ChessProduction(w,h+9*iy,2,4),
    ChessProduction(w,h+8*iy,3,4),
    ChessProduction(w,h+7*iy,1,3),
    ChessProduction(w,h+6*iy,15,2),--60
    ChessProduction(w,h+5*iy,19,5),
    ChessProduction(w,h+4*iy,1,2),
    ChessProduction(w,h+3*iy,23,3),
    ChessProduction(w,h+2*iy,9,4),
    ChessProduction(w,h+iy,2,1)
    }
end

function drawchess()
    for k=1,65 do
        c[k]:draw(c[k].x,c[k].y)
    end
end

function touchchess()
    for k=1,65 do
        c[k]:touched(touch)
    end
end


--# ChessProduction
ChessProduction = class()

function ChessProduction:init(x,y,about,colour)
    -- you can accept and set parameters here
    self.x = x
    self.y = y
    self.about = about
    self.colour = colour
    self.sn = self:judge(self.about)
end

function ChessProduction:getpositionx()
    return self.x
end

function ChessProduction:getpositiony()
    return self.y
end

function ChessProduction:draw(pox,poy)


    -- Codea does not automatically call this method
    if self.about==1 then
        sprite("Documents:Chess1",pox,poy,128)
    elseif self.about==2 then
        sprite("Documents:Chess2",pox,poy,128)
    elseif self.about==3 then
        sprite("Documents:Chess3",pox,poy,128)
    elseif self.about==4 then
        sprite("Documents:Chess4",pox,poy,128)
    elseif self.about==5 then
        sprite("Documents:Chess5",pox,poy,128)
    elseif self.about==6 then
        sprite("Documents:Chess6",pox,poy,128)
    elseif self.about==7 then
        sprite("Documents:Chess7",pox,poy,128)
    elseif self.about==8 then
        sprite("Documents:Chess8",pox,poy,128)
    elseif self.about==9 then
        sprite("Documents:Chess9",pox,poy,128)
    elseif self.about==10 then
        sprite("Documents:Chess10",pox,poy,128)
    elseif self.about==11 then
        sprite("Documents:Chess11",pox,poy,128)
    elseif self.about==12 then
        sprite("Documents:Chess12",pox,poy,128)
    elseif self.about==13 then
        sprite("Documents:Chess13",pox,poy,128)
    elseif self.about==14 then
        sprite("Documents:Chess14",pox,poy,128)
    elseif self.about==15 then
        sprite("Documents:Chess15",pox,poy,128)
    elseif self.about==16 then
        sprite("Documents:Chess16",pox,poy,128)
    elseif self.about==17 then
        sprite("Documents:Chess17",pox,poy,128)
    elseif self.about==18 then
        sprite("Documents:Chess18",pox,poy,128)
    elseif self.about==19 then
        sprite("Documents:Chess19",pox,poy,128)
    elseif self.about==20 then
        sprite("Documents:Chess20",pox,poy,128)
    elseif self.about==21 then
        sprite("Documents:Chess21",pox,poy,128)
    elseif self.about==22 then
        sprite("Documents:Chess22",pox,poy,128)
    elseif self.about==23 then
        sprite("Documents:Chess23",pox,poy,128)
    elseif self.about==24 then
        sprite("Documents:Chess24",pox,poy,128)
    end
    if self.colour==1 then
        sprite("Documents:Color1",pox,poy,180)
    elseif self.colour==2 then
        sprite("Documents:Color2",pox,poy,180)
    elseif self.colour==3 then
        sprite("Documents:Color3",pox,poy,180)
    elseif self.colour==4 then
        sprite("Documents:Color4",pox,poy,180)
    elseif self.colour==5 then
        sprite("Documents:Color5",pox,poy,180)
    end
end

function ChessProduction:touched(touch)
    -- Codea does not automatically call this method
    self.x = self.x + CurrentTouch.deltaX
    self.y = self.y + CurrentTouch.deltaY

end

-- ChessProduction:action() is in the ChessDatabase class

function ChessProduction:judge(about)
    if about==1 or about==5 or about==8 or about==9 or about==10 or about==19 then
        return 1
    else
        return 0
    end
end
