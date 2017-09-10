--# CharacterChess
CharacterChess = class()

function CharacterChess:init(num)
    -- you can accept and set parameters here
    self.num = num
    self.randomx = math.random(-15,30)
    self.randomy = math.random(-15,30)
    self.pos = 1
    self.x = c[self.pos].x+self.randomx
    self.y = c[self.pos].y+self.randomy
    self.position={x=self.x,y=self.y}
    self.moved=0
    self.time=0
    self.finished=0
end

function CharacterChess:draw()
    tint(alpha.tintd)
    if self.num==1 then
        sprite("Documents:Character1",self.position.x,self.position.y,50)
    end
    if self.num==2 then
        sprite("Documents:Character2",self.position.x,self.position.y,50)
    end
    if self.num==3 then
        sprite("Documents:Character3",self.position.x,self.position.y,50)
    end
    if self.num==4 then
        sprite("Documents:Character4",self.position.x,self.position.y,50)
    end
    if self.num==5 then
        sprite("Documents:Character5",self.position.x,self.position.y,50)
    end
    if self.num==6 then
        sprite("Documents:Character6",self.position.x,self.position.y,50)
    end
    if self.num==7 then
        sprite("Documents:Character7",self.position.x,self.position.y,50)
    end
    if self.num==12 then
        sprite("Documents:Character12",self.position.x,self.position.y,50)
    end
    -- Codea does not automatically call this method
    if dice.pressed2==1 then
        playerchess[turn]:move(dice.d)
    end
end

function CharacterChess:touched(touch)
    self.position.x = self.position.x + CurrentTouch.deltaX
    self.position.y = self.position.y + CurrentTouch.deltaY
end

function CharacterChess:move(x)
    if self.moved==0 then
        self.moved=1
        self.time=ElapsedTime
    end
    if ElapsedTime-self.time>=1 and self.moved==1 then
        if dice.d>0 then
            self.pos = self.pos + 1/120
            x = x - 1/120
            dice.d = dice.d - 1/120
            self.aa=math.floor(self.pos)+1
            if self.aa>=66 then
                self.aa = self.aa - 64
            end
            if math.floor(self.pos+0.5)>65 then
                self.pos = self.pos - 64
            end
            self.aimx=c[self.aa].x+self.randomx
            self.aimy=c[self.aa].y+self.randomy
            self.position.x = self.position.x + (self.aimx-self.position.x)/60
            self.position.y = self.position.y + (self.aimy-self.position.y)/60
        end
        -- Codea does not automatically call this method
        if dice.d<=0 then
            tturn=turn
            self.active=math.floor(self.pos+0.5)
            self.finished=action(c[self.active].about,self.active)
            if self.finished==1 then
                turn = turn + 1
                if turn==6 then
                    turn=1
                end
                if hide==1 and attack==0 and tturn~=turn then
                    if player[turn].judgement[1]==0 then
                        player[turn].judgement[1]=7
                    elseif player[turn].judgement[1]==6 then
                        player[turn].judgement[2]=7
                    end
                    hide=0
                end
                if attack==0 and tturn~=turn then
                    if player[turn].judgement[2]==0 then
                        attack=player[turn].judgement[1]
                    else
                        attack=player[turn].judgement[2]                
                    end
                end
                if attack==3 or attack==4 then
                    response(attack)
                end
                dice.pressed=0
                dice.pressed2=0
                edge=1
                pmet=0
                pressed3=0
                self.time=0
                self.moved=0
                self.finished=0
                self.pos = math.floor(self.pos+0.5)
                alpha.tintd=255
                alpha.tinte=30
            end
        end
    end
end
