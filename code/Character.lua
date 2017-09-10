--# Character
Character = class()

function Character:init(num)
    -- you can accept and set parameters here
    self.num = num
    self.healthmax=4
    self.health = 3
    self.weapon={1,nil,nil}
    self.tools={nil,nil,nil,nil}
    self.judgement={0,0}
    self.enlight=0
    self.attacktime=1
    self.rage=1
    self.range=weaponrange[self.weapon[1]]
end

function Character:draw(ww,hh,rr)
    if self.num==1 then
        sprite("Documents:People1",ww,hh,rr)
    elseif self.num==2 then
        sprite("Documents:People2",ww,hh,rr)
    elseif self.num==3 then
        sprite("Documents:People3",ww,hh,rr)
    elseif self.num==4 then
        sprite("Documents:People4",ww,hh,rr)
    elseif self.num==5 then
        sprite("Documents:People5",ww,hh,rr)
    elseif self.num==6 then
        sprite("Documents:People6",ww,hh,rr)
    elseif self.num==7 then
        sprite("Documents:People7",ww,hh,rr)
    elseif self.num==8 then
        sprite("Documents:People8",ww,hh,rr)
    elseif self.num==9 then
        sprite("Documents:People9",ww,hh,rr)
    elseif self.num==10 then
        sprite("Documents:People10",ww,hh,rr)
    elseif self.num==11 then
        sprite("Documents:People11",ww,hh,rr)
    elseif self.num==12 then
        sprite("Documents:People12",ww,hh,rr)
    elseif self.num==13 then
        sprite("Documents:People13",ww,hh,rr)
    elseif self.num==14 then
        sprite("Documents:People14",ww+10,hh,rr)
    end
    if edge==1 then
        sprite("Documents:Board",WIDTH-155,35,400)
        sprite("Documents:Board",WIDTH-155,100,400)
        sprite("Documents:Board",WIDTH-155,165,400)
        sprite("Documents:Notice_Health",WIDTH-270,167,60)
        sprite("Documents:Notice_Weapon",WIDTH-270,102,60)
        sprite("Documents:Notice_Number",WIDTH-130,100,200)
        sprite("Documents:Notice_Tools",WIDTH-270,37,60)
        sprite("Documents:Notice_Number",WIDTH-130,35,200)
        for j1=1,self.healthmax do
            sprite("Documents:Notice_HealthEmpty",WIDTH-175+(j1-1)*30,167,35)
        end
        for j2=1,self.health do
            sprite("Documents:Notice_HealthFull",WIDTH-175+(j2-1)*30,167,35)
        end
        tint(255, 255, 255, 200)
        if self.weapon[1]==2 then
            sprite("Documents:Weapon2",WIDTH-192,102,45)
        elseif self.weapon[1]==3 then
            sprite("Documents:Weapon3",WIDTH-192,102,45)
        elseif self.weapon[1]==4 then
            sprite("Documents:Weapon4",WIDTH-192,102,45)
        elseif self.weapon[1]==5 then
            sprite("Documents:Weapon5",WIDTH-192,102,45)
        elseif self.weapon[1]==6 then
            sprite("Documents:Weapon6",WIDTH-192,102,45)
        elseif self.weapon[1]==7 then
            sprite("Documents:Weapon7",WIDTH-192,102,45)
        end
        if self.weapon[3]==1 then
            sprite("Documents:Glasses1",WIDTH-70,102,45)
        elseif self.weapon[3]==2 then
            sprite("Documents:Glasses2",WIDTH-70,102,45)
        end
        if self.weapon[2]==1 then
            sprite("Documents:Shield1",WIDTH-133,102,45)
        end
        for i=1,3 do
            if self.tools[i]==1 then
                sprite("Documents:Tool1",WIDTH-192+60*(i-1),38,45)
            end
            if self.tools[i]==2 then
                sprite("Documents:Tool2",WIDTH-192+60*(i-1),38,45)
            end
            if self.tools[i]==3 then
                sprite("Documents:Tool3",WIDTH-192+60*(i-1),38,45)
            end
            
            if self.tools[i]==4 then
                sprite("Documents:Dice1",WIDTH-192+60*(i-1),38,45)
            end
            if self.tools[i]==5 then
                sprite("Documents:Dice2",WIDTH-192+60*(i-1),38,45)
            end
            if self.tools[i]==6 then
                sprite("Documents:Dice3",WIDTH-192+60*(i-1),38,45)
            end
            if self.tools[i]==7 then
                sprite("Documents:Dice4",WIDTH-192+60*(i-1),38,45)
            end
            if self.tools[i]==8 then
                sprite("Documents:Dice5",WIDTH-192+60*(i-1),38,45)
            end
            if self.tools[i]==9 then
                sprite("Documents:Dice6",WIDTH-192+60*(i-1),38,45)
            end
        end
        tint(255)
    end
    -- Codea does not automatically call this method
end
