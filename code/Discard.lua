--# Discard
function discard()
    alpha.tintd=50
    for i=1,4 do
        tint(255-127*light[i])
        if player[turn].tools[i]==1 then
            sprite("Documents:Tool1",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
        if player[turn].tools[i]==2 then
            sprite("Documents:Tool2",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
        if player[turn].tools[i]==3 then
            sprite("Documents:Tool3",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
            
        if player[turn].tools[i]==4 then
            sprite("Documents:Dice1",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
        if player[turn].tools[i]==5 then
            sprite("Documents:Dice2",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
        if player[turn].tools[i]==6 then
            sprite("Documents:Dice3",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
        if player[turn].tools[i]==7 then
            sprite("Documents:Dice4",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
        if player[turn].tools[i]==8 then
            sprite("Documents:Dice5",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
        if player[turn].tools[i]==9 then
            sprite("Documents:Dice6",3/9*WIDTH+1/9*WIDTH*(i-1),3/5*HEIGHT,100)
        end
    end
    tint(128+127*pressable2)
    sprite("Documents:Choice_Yes",1/2*WIDTH,2/5*HEIGHT,250)
    if CurrentTouch.x>=3/9*WIDTH-50
        and CurrentTouch.x<=3/9*WIDTH+50
        and CurrentTouch.y>=3/5*HEIGHT-50
        and CurrentTouch.y<=3/5*HEIGHT+50
        and CurrentTouch.state==ENDED then
        for q=1,4 do
            light[q]=0
        end
        light[1]=1
        pressable2=1
    end
    if CurrentTouch.x>=4/9*WIDTH-50
        and CurrentTouch.x<=4/9*WIDTH+50
        and CurrentTouch.y>=3/5*HEIGHT-50
        and CurrentTouch.y<=3/5*HEIGHT+50
        and CurrentTouch.state==ENDED then
        for q=1,4 do
            light[q]=0
        end
        light[2]=1
        pressable2=1
    end
    if CurrentTouch.x>=5/9*WIDTH-50
        and CurrentTouch.x<=5/9*WIDTH+50
        and CurrentTouch.y>=3/5*HEIGHT-50
        and CurrentTouch.y<=3/5*HEIGHT+50
        and CurrentTouch.state==ENDED then
        for q=1,4 do
            light[q]=0
        end
        light[3]=1
        pressable2=1
    end
    if CurrentTouch.x>=6/9*WIDTH-50
        and CurrentTouch.x<=6/9*WIDTH+50
        and CurrentTouch.y>=3/5*HEIGHT-50
        and CurrentTouch.y<=3/5*HEIGHT+50
        and CurrentTouch.state==ENDED then
        for q=1,4 do
            light[q]=0
        end
        light[4]=1
        pressable2=1
    end
    if CurrentTouch.x>=1/2*WIDTH-125
        and CurrentTouch.x<=1/2*WIDTH+125
        and CurrentTouch.y>=2/5*HEIGHT-50
        and CurrentTouch.y<=2/5*HEIGHT+50 
        and CurrentTouch.state==ENDED 
        and pressable2==1 then
        for q=1,4 do
            if light[q]==1 then
                pressed2=0
                fin=1
                if q==4 then
                    player[turn].tools[4]=nil
                else
                    for i=q+1,4 do
                        player[turn].tools[i-1]=player[turn].tools[i]
                    end
                    player[turn].tools[4]=nil
                end
            end
        end    
    end
end









function discard2()
    alpha.tintd=50
    for i=1,4 do
        tint(255-127*light[i])
        if player[choose].tools[i]==1 then
            sprite("Documents:Tool1",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
        if player[choose].tools[i]==2 then
            sprite("Documents:Tool2",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
        if player[choose].tools[i]==3 then
            sprite("Documents:Tool3",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
            
        if player[choose].tools[i]==4 then
            sprite("Documents:Dice1",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
        if player[choose].tools[i]==5 then
            sprite("Documents:Dice2",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
        if player[choose].tools[i]==6 then
            sprite("Documents:Dice3",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
        if player[choose].tools[i]==7 then
            sprite("Documents:Dice4",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
        if player[choose].tools[i]==8 then
            sprite("Documents:Dice5",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
        if player[choose].tools[i]==9 then
            sprite("Documents:Dice6",3/9*WIDTH+1/9*WIDTH*(i-1),1/2*HEIGHT,100)
        end
    end
    tint(255-127*light[5])
    if player[choose].weapon[1]==2 then
        sprite("Documents:Weapon2",4/9*WIDTH,7/10*HEIGHT,100)
    elseif player[choose].weapon[1]==3 then
        sprite("Documents:Weapon3",4/9*WIDTH,7/10*HEIGHT,100)
    elseif player[choose].weapon[1]==4 then
        sprite("Documents:Weapon4",4/9*WIDTH,7/10*HEIGHT,100)
    elseif player[choose].weapon[1]==5 then
        sprite("Documents:Weapon5",4/9*WIDTH,7/10*HEIGHT,100)
    elseif player[choose].weapon[1]==6 then
        sprite("Documents:Weapon6",4/9*WIDTH,7/10*HEIGHT,100)
    elseif player[choose].weapon[1]==7 then
        sprite("Documents:Weapon7",4/9*WIDTH,7/10*HEIGHT,100)
    end
    tint(255-127*light[7])
    if player[choose].weapon[3]==1 then
        sprite("Documents:Glasses1",6/9*WIDTH,7/10*HEIGHT,100)
    elseif player[choose].weapon[3]==2 then
        sprite("Documents:Glasses2",6/9*WIDTH,7/10*HEIGHT,100)
    end
    tint(255-127*light[6])
    if player[choose].weapon[2]==1 then
        sprite("Documents:Shield1",5/9*WIDTH,7/10*HEIGHT,100)
    end
    tint(128+127*pressable2)
    sprite("Documents:Choice_Yes",1/3*WIDTH,3/10*HEIGHT,250)
    tint(255)
    sprite("Documents:Choice_No",2/3*WIDTH,3/10*HEIGHT,250)
    if CurrentTouch.x>=3/9*WIDTH-50
        and CurrentTouch.x<=3/9*WIDTH+50
        and CurrentTouch.y>=1/2*HEIGHT-50
        and CurrentTouch.y<=1/2*HEIGHT+50
        and player[choose].tools[1]~=nil
        and CurrentTouch.state==ENDED then
        for q=1,7 do
            light[q]=0
        end
        light[1]=1
        pressable2=1
    end
    if CurrentTouch.x>=4/9*WIDTH-50
        and CurrentTouch.x<=4/9*WIDTH+50
        and CurrentTouch.y>=1/2*HEIGHT-50
        and CurrentTouch.y<=1/2*HEIGHT+50
        and player[choose].tools[2]~=nil
        and CurrentTouch.state==ENDED then
        for q=1,7 do
            light[q]=0
        end
        light[2]=1
        pressable2=1
    end
    if CurrentTouch.x>=5/9*WIDTH-50
        and CurrentTouch.x<=5/9*WIDTH+50
        and CurrentTouch.y>=1/2*HEIGHT-50
        and CurrentTouch.y<=1/2*HEIGHT+50
        and player[choose].tools[3]~=nil
        and CurrentTouch.state==ENDED then
        for q=1,7 do
            light[q]=0
        end
        light[3]=1
        pressable2=1
    end
    if CurrentTouch.x>=4/9*WIDTH-50
        and CurrentTouch.x<=4/9*WIDTH+50
        and CurrentTouch.y>=7/10*HEIGHT-50
        and CurrentTouch.y<=7/10*HEIGHT+50
        and player[choose].weapon[1]~=1
        and CurrentTouch.state==ENDED then
        for q=1,7 do
            light[q]=0
        end
        light[5]=1
        pressable2=1
    end
    if CurrentTouch.x>=5/9*WIDTH-50
        and CurrentTouch.x<=5/9*WIDTH+50
        and CurrentTouch.y>=7/10*HEIGHT-50
        and CurrentTouch.y<=7/10*HEIGHT+50
        and player[choose].weapon[2]~=nil
        and CurrentTouch.state==ENDED then
        for q=1,7 do
            light[q]=0
        end
        light[6]=1
        pressable2=1
    end
    if CurrentTouch.x>=6/9*WIDTH-50
        and CurrentTouch.x<=6/9*WIDTH+50
        and CurrentTouch.y>=7/10*HEIGHT-50
        and CurrentTouch.y<=7/10*HEIGHT+50
        and player[choose].weapon[3]~=nil
        and CurrentTouch.state==ENDED then
        for q=1,7 do
            light[q]=0
        end
        light[7]=1
        pressable2=1
    end
    if CurrentTouch.x>=1/3*WIDTH-125
        and CurrentTouch.x<=1/3*WIDTH+125
        and CurrentTouch.y>=3/10*HEIGHT-50
        and CurrentTouch.y<=3/10*HEIGHT+50 
        and CurrentTouch.state==ENDED 
        and pressable2==1 then
        if ttt==9 then
            for q=1,7 do
                if light[q]==1 then
                    pressed4=0
                    fin=1
                    if q==3 then
                        player[choose].tools[3]=nil
                    elseif q<3 then
                        for i=q+1,3 do
                            player[choose].tools[i-1]=player[choose].tools[i]
                        end
                        player[choose].tools[3]=nil
                    elseif q>3 then
                        player[choose].weapon[q-4]=nil
                    end
                end
            end
        end
        if ttt==10 then
            for q=1,7 do
                if light[q]==1 then
                    if q==3 then
                        pmet=player[choose].tools[3]
                        player[choose].tools[3]=nil
                    elseif q<3 then
                        pmet=player[choose].tools[q]
                        for i=q+1,3 do
                            player[choose].tools[i-1]=player[choose].tools[i]
                        end
                        player[choose].tools[3]=nil
                    elseif q>3 then
                        player[turn].weapon[q-4]=player[choose].weapon[q-4]
                        player[choose].weapon[q-4]=nil
                        pressed4=0
                        fin=1
                    end
                    if pmet~=0 then
                        for i=1,4 do
                            if player[turn].tools[i]==nil then
                                if min==0 then
                                    min=i
                                end
                            end
                        end
                        player[turn].tools[min]=pmet
                        if min==4 then
                            pressed4=0
                            pressed2=1
                        else
                            pressed4=0
                            fin=1
                        end
                    end
                end
            end 
        end
    end
    if CurrentTouch.x>=2/3*WIDTH-125
        and CurrentTouch.x<=2/3*WIDTH+125
        and CurrentTouch.y>=3/10*HEIGHT-50
        and CurrentTouch.y<=3/10*HEIGHT+50 
        and CurrentTouch.state==ENDED then
        pressed4=0
        fin=2
    end
end
