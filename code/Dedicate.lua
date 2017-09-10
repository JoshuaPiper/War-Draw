--# Dedicate
function dedicate()
    alpha.tintd=50
    tint(255,150)
    sprite("Documents:Halo",1/2*WIDTH,1/2*HEIGHT,0.9*HEIGHT)
    tint(128+127*player[1].enlight)
    player[1]:draw(1/2*WIDTH,9/10*HEIGHT-30,350)
    tint(128+127*player[2].enlight)
    player[2]:draw(1/5*WIDTH,3/5*HEIGHT,350)
    tint(128+127*player[3].enlight)
    player[3]:draw(1/3*WIDTH,1/4*HEIGHT,350)
    tint(128+127*player[4].enlight)
    player[4]:draw(2/3*WIDTH,1/4*HEIGHT,350)
    tint(128+127*player[5].enlight)
    player[5]:draw(4/5*WIDTH,3/5*HEIGHT,350)
    tint(128+127*pressable)
    sprite("Documents:Choice_Yes",1/2*WIDTH,1/2*HEIGHT+30,250)
    tint(255)
    sprite("Documents:Choice_No",1/2*WIDTH,1/2*HEIGHT-30,250)
    if CurrentTouch.x>=1/2*WIDTH-175 
        and CurrentTouch.x<=1/2*WIDTH+175 
        and CurrentTouch.y>=9/10*HEIGHT-233-30
        and CurrentTouch.y<=9/10*HEIGHT+50-30
        and CurrentTouch.state==ENDED then
        for q=1,5 do
            player[q].enlight=0
        end
        player[1].enlight=1
        if temp==1 or temp==10 then
            s=math.abs(1-turn)
            if math.abs(1-turn)>=math.floor(1/2*playernum+0.5) then
                s=playernum-s
            end
            if player[1].weapon[3]==2 then
                s = s + 1
            end
            if player[turn].weapon[3]==1 then
                s = s - 1
            end
            if temp==1 then
                if s<=player[turn].range then
                    pressable=1
                else
                    pressable=0
                end
            end
            if temp==10 then
                if s<=1 then
                    pressable=1
                else
                    pressable=0
                end
            end
        else
            pressable=1
        end
    end
    if CurrentTouch.x>=1/3*WIDTH-175 
        and CurrentTouch.x<=1/3*WIDTH+175 
        and CurrentTouch.y>=1/4*HEIGHT-233 
        and CurrentTouch.y<=1/4*HEIGHT+50 
        and CurrentTouch.state==ENDED then
        for q=1,5 do
            player[q].enlight=0
        end
        player[3].enlight=1
        if temp==1 or temp==10 then
            s=math.abs(3-turn)
            if math.abs(3-turn)>=math.floor(1/2*playernum+0.5) then
                s=playernum-s
            end
            if player[3].weapon[3]==2 then
                s = s + 1
            end
            if player[turn].weapon[3]==1 then
                s = s - 1
            end
            if temp==1 then
                if s<=player[turn].range then
                    pressable=1
                else
                    pressable=0
                end
            end
            if temp==10 then
                if s<=1 then
                    pressable=1
                else
                    pressable=0
                end
            end
        else
            pressable=1
        end
    end
    if CurrentTouch.x>=2/3*WIDTH-175 
        and CurrentTouch.x<=2/3*WIDTH+175 
        and CurrentTouch.y>=1/4*HEIGHT-233 
        and CurrentTouch.y<=1/4*HEIGHT+50 
        and CurrentTouch.state==ENDED then
        for q=1,5 do
            player[q].enlight=0
        end
        player[4].enlight=1
        if temp==1 or temp==10 then
            s=math.abs(4-turn)
            if math.abs(4-turn)>=math.floor(1/2*playernum+0.5) then
                s=playernum-s
            end
            if player[4].weapon[3]==2 then
                s = s + 1
            end
            if player[turn].weapon[3]==1 then
                s = s - 1
            end
            if temp==1 then
                if s<=player[turn].range then
                    pressable=1
                else
                    pressable=0
                end
            end
            if temp==10 then
                if s<=1 then
                    pressable=1
                else
                    pressable=0
                end
            end
        else
            pressable=1
        end
    end
    if CurrentTouch.x>=1/5*WIDTH-175 
        and CurrentTouch.x<=1/5*WIDTH+175 
        and CurrentTouch.y>=3/5*HEIGHT-233 
        and CurrentTouch.y<=3/5*HEIGHT+50 
        and CurrentTouch.state==ENDED then
        for q=1,5 do
            player[q].enlight=0
        end
        player[2].enlight=1
        if temp==1 or temp==10 then
            s=math.abs(2-turn)
            if math.abs(2-turn)>=math.floor(1/2*playernum+0.5) then
                s=playernum-s
            end
            if player[2].weapon[3]==2 then
                s = s + 1
            end
            if player[turn].weapon[3]==1 then
                s = s - 1
            end
            if temp==1 then
                if s<=player[turn].range then
                    pressable=1
                else
                    pressable=0
                end
            end
            if temp==10 then
                if s<=1 then
                    pressable=1
                else
                    pressable=0
                end
            end
        else
            pressable=1
        end
    end
    if CurrentTouch.x>=4/5*WIDTH-175 
        and CurrentTouch.x<=4/5*WIDTH+175 
        and CurrentTouch.y>=3/5*HEIGHT-233 
        and CurrentTouch.y<=3/5*HEIGHT+50 
        and CurrentTouch.state==ENDED then
        for q=1,5 do
            player[q].enlight=0
        end
        player[5].enlight=1
        if temp==1 or temp==10 then
            s=math.abs(5-turn)
            if math.abs(5-turn)>=math.floor(1/2*playernum+0.5) then
                s=playernum-s
            end
            if player[5].weapon[3]==2 then
                s = s + 1
            end
            if player[turn].weapon[3]==1 then
                s = s - 1
            end
            if temp==1 then
                if s<=player[turn].range then
                    pressable=1
                else
                    pressable=0
                end
            end
            if temp==10 then
                if s<=1 then
                    pressable=1
                else
                    pressable=0
                end
            end
        else
            pressable=1
        end
    end
    for q=1,5 do
        if player[q].enlight==1 and q==turn and (temp==1 or temp==19 or temp==8 or temp==9 or temp==10) then
            pressable=0
        end
    end
    if CurrentTouch.x>=1/2*WIDTH-125
        and CurrentTouch.x<=1/2*WIDTH+125
        and CurrentTouch.y>=1/2*HEIGHT-20
        and CurrentTouch.y<=1/2*HEIGHT+80
        and CurrentTouch.state==ENDED 
        and pressable==1 then
        for q=1,5 do
            if player[q].enlight==1 then
                pressed3=0
            end
        end
                
    end
    if CurrentTouch.x>=1/2*WIDTH-125
        and CurrentTouch.x<=1/2*WIDTH+125
        and CurrentTouch.y>=1/2*HEIGHT-80
        and CurrentTouch.y<=1/2*HEIGHT+20
        and CurrentTouch.state==ENDED 
        and pressable==1 then
        for q=1,5 do
            player[q].enlight=0
            pressed3=0
        end
                
    end
end

--# Notice
function notice(a,b)
    if a==1 and temp==2 then
        alpha.tinte=255
        pressable=1
    end
    if a==1 and (c[b].colour==1 or c[b].colour==4) and player[turn].weapon[2]==1 then
        alpha.tinte=255
        pressable=1
    end
    if a==2 and c[b].colour==crecord and t~=0 then
        alpha.tinte=255
        pressable=1        
    end
    if a==3 and temp==1 then
        alpha.tinte=255
        pressable=1
    end
    if a==4 and temp==2 then
        alpha.tinte=255
        pressable=1
    end
    if a==5 and temp==1 and player[turn].attacktime>0 then
        alpha.tinte=255
        pressable=1
    end
    if a==6 and c[b].colour==1 then
        alpha.tinte=255
        pressable=1          
    end
    if a==7 and c[b].colour~=5 then
        alpha.tinte=255
        pressable=1          
    end
    if a==0 and temp==3 and player[turn].health < player[turn].healthmax then
        alpha.tinte=255
        pressable=1
    end
    if a==0 and temp==4 then
        alpha.tinte=255
        pressable=1
    end
    if a==0 and temp==6 then
        alpha.tinte=255
        pressable=1        
    end
    if a==0 and temp==7 then
        alpha.tinte=255
        pressable=1        
    end
    if a==0 and temp==11 and player[turn].rage==1 then
        alpha.tinte=255
        pressable=1
    end
    if a==0 and temp==12 then
        alpha.tinte=255
        pressable=1
    end
    if a==0 and (temp==13 or temp==14 or temp==15 or temp==16 or temp==17 or temp==18) then
        alpha.tinte=255
        pressable=1  
    end
    if a==0 and (temp==22 or temp==23) then
        alpha.tinte=255
        pressable=1
    end
    if a==0 and temp==24 then
        alpha.tinte=255
        pressable=1
    end
    if a==0 and temp==20 and player[turn].judgement[1]==0 then
        alpha.tinte=255
        pressable=1        
    end
end

--# Notice2
function notice2(a,b)
    if a==0 and player[turn].attacktime<=0 and temp==1 and player[turn].weapon[1]~=2 then
        pressable=0
        alpha.tinte=30
    end
    if a==1 and player[hold].weapon[1]==3 and temp==2 and c[b].colour~=1 then
        pressable=0
        alpha.tinte=30     
    end
    if a==1 and temp~=2 and player[turn].weapon[2]~=1 then
        pressable=0
        alpha.tinte=30
    end
    if a==1 and (c[b].colour==2 or c[b].colour==3 or c[b].colour==5) and player[turn].weapon[2]==1 then
        pressable=0
        alpha.tinte=30
    end
    if a==2 and t==0 then
        pressable=0
        alpha.tinte=30                    
    end
    if a==3 and temp~=1 then
        pressable=0
        alpha.tinte=30        
    end
    if a==4 and temp~=2 then
        pressable=0
        alpha.tinte=30        
    end
    if a==5 and temp~=1 then
        pressable=0
        alpha.tinte=30       
    end
    if a==6 and c[b].colour~=1 then
        pressable=0
        alpha.tinte=30          
    end
    if a==7 and c[b].colour==5 then
        pressable=0
        alpha.tinte=30          
    end
end

--# Response
function response(a)
    if a==1 then
        attack=0
        if hold==1 then
            turn=5
        else
            turn=hold-1          
        end
        hold=0
        pressable=0
        choose=0
        for q=1,5 do
             player[q].enlight=0
        end
    end
    if a==2 then
        sound("Game Sounds One:Punch 1")
        player[t].health = player[t].health - 1
        t=0
        crecord=0
        player[turn].attacktime=1
        player[turn].rage=1
        pressable=0
        hold=0
        finalhold=0
        attack=0
        choose=0
        for q=1,5 do
            player[q].enlight=0
        end
        turn = turn - 1
    end
    if a==3 or a==4 then
        if hold==turn then
            attack=0
            hold=0
            pressable=0
        end
    end
    if a==5 then
        choose=hold
        hold=turn
        turn=choose-1
    end
    if a==6 then
        if player[turn].judgement[2]==6 and player[turn].judgement[1]==7 then
            player[turn].judgement[2]=0
            attack=0
            turn = turn - 1
            tturn=0
        else
            player[turn].judgement={0,0}
            pressable=0
            hold=0
            attack=0
            choose=0
            for q=1,5 do
                player[q].enlight=0
            end
            turn = turn - 1
        end
    end
    if a==7 then
        if player[turn].judgement[2]==7 and player[turn].judgement[1]==6 then
            player[turn].judgement[2]=0
            attack=0
            turn = turn - 1
            tturn=0
        else
            player[turn].judgement={0,0}
            pressable=0
            hold=0
            attack=0
            choose=0
            for q=1,5 do
                player[q].enlight=0
            end
            turn = turn - 1
        end
        hide=1       
    end
end

--# BadResponse
function badresponse(a,b)
    if a==1 then
        sound("Game Sounds One:Male Grunt 3")
        player[turn].health = player[turn].health - player[hold].rage
        player[hold].rage = 1
        if player[hold].weapon[1]==7 and player[turn].weapon[3]~=nil then
            player[turn].weapon[3]=nil
        end
        attack=0
        if hold==1 then
            turn=5
        else
            turn=hold-1          
        end
        hold=0
        pressable=0
        choose=0
        for q=1,5 do
             player[q].enlight=0
        end
    elseif a==2 then
        if t==0 then
            crecord=c[b].colour
            t=turn
            if hold==1 then
                turn=5
            else
                turn=hold-1          
            end
            hold=0
            pressable=0
            choose=0
            for q=1,5 do
                player[q].enlight=0
            end    
        else
            t=0
            crecord=0
            player[turn].attacktime=1
            player[turn].rage=1
            pressable=0
            hold=0
            finalhold=0
            attack=0
            choose=0
            for q=1,5 do
                player[q].enlight=0
            end
            turn = turn - 1
        end
    elseif a==3 or a==4 then
        player[turn].health = player[turn].health - 1
        pressable=0
        sound("Game Sounds One:Male Grunt 3")
    elseif a==5 then
        sound("Game Sounds One:Male Grunt 3")
        player[turn].health = player[turn].health - 1
        turn=finalhold-1
        hold=0
        attack=0
        choose=0
        finalhold=0
        for q=1,5 do
            player[q].enlight=0
        end        
    elseif a==6 then
        if player[turn].judgement[2]==6 and player[turn].judgement[1]==7 then
            player[turn].judgement[2]=0
            attack=0
            lock=1
            turn = turn - 1
            tturn=0
        else
            player[turn].judgement={0,0}
            pressable=0
            hold=0
            attack=0
            choose=0
            for q=1,5 do
                player[q].enlight=0
            end
        end
    elseif a==7 then
        sound("Game Sounds One:Explode 1")
        player[turn].health = player[turn].health - 3
        if player[turn].judgement[2]==6 and player[turn].judgement[1]==7 then
            player[turn].judgement[2]=0
            attack=0
            turn = turn - 1
            tturn=0
        else
            player[turn].judgement={0,0}
            pressable=0
            hold=0
            attack=0
            choose=0
            for q=1,5 do
                player[q].enlight=0
            end
            if lock==0 then
                turn = turn - 1
            else
                lock=0
            end
        end
    else
        player[turn].attacktime=1
        player[turn].rage=1
        pressable=0
        hold=0
        attack=0
        choose=0
        for q=1,5 do
            player[q].enlight=0
        end
    end
end
