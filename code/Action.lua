--# Action
function action(kind,num)
    alpha.tintd=200
    temp=kind
    kind=0
    edge=0
    
    --alpha.tintb=255
    --alpha.tinta=0
    --tween(1,alpha,{tinta=0,tintb=255})
    if pressed3 == 0 and pressed2 == 0 and pressed4 == 0 then
        if c[num].sn==0 then
            if attack>0 then
                tint(255,70)
                sprite("Documents:Board_BlueLong",1/2*WIDTH,11/20*HEIGHT,1300)
                
                notice2(attack,num)
                
                tint(255,alpha.tinte)
                sprite("Documents:Choice_Yes",1/3*WIDTH,1/5*HEIGHT-20,250)
                tint(255)
                sprite("Documents:Board",8/20*WIDTH,0.44*HEIGHT,400)
                sprite("Documents:Notice_Health",8/20*WIDTH-113,0.44*HEIGHT+2,60)
                c[num]:draw(8/20*WIDTH,0.6*HEIGHT)
                player[turn]:draw(12/20*WIDTH,0.59*HEIGHT,500)
                for j1=1,player[turn].healthmax do
                    sprite("Documents:Notice_HealthEmpty",8/20*WIDTH-30+(j1-1)*30,0.44*HEIGHT+2,35)
                end
                for j2=1,player[turn].health do
                    sprite("Documents:Notice_HealthFull",8/20*WIDTH-30+(j2-1)*30,0.44*HEIGHT+2,35)
                end   
                sprite("Documents:Choice_No",2/3*WIDTH,1/5*HEIGHT-20,250)
                if CurrentTouch.x>=2/3*WIDTH-125 
                and CurrentTouch.x<=2/3*WIDTH+125 
                and CurrentTouch.y>=1/5*HEIGHT-70
                and CurrentTouch.y<=1/5*HEIGHT+30
                and CurrentTouch.state==BEGAN then
                    badresponse(attack,num)
                    return 1
                end
                if CurrentTouch.x>=1/3*WIDTH-125 
                and CurrentTouch.x<=1/3*WIDTH+125 
                and CurrentTouch.y>=1/5*HEIGHT-70
                and CurrentTouch.y<=1/5*HEIGHT+30
                and CurrentTouch.state==BEGAN
                and pressable==1 then   
                    kind=temp
                    if attack==1 and (c[num].colour==1 or c[num].colour==4) and player[turn].weapon[2]==1 and player[hold].weapon[1]~=4 then
                        sound("Game Sounds One:Whoosh 3")
                        if attack==1 and player[hold].weapon[1]==5 then
                            player[hold].attacktime = player[hold].attacktime + 1
                        end
                        response(attack)
                        return 1
                    end
                    if attack==2 or attack==6 or attack==7 then
                        response(attack)
                        return 1
                    end
                end
            else
                tint(255,70)
                sprite("Documents:Board_BlueLong",1/2*WIDTH,11/20*HEIGHT,1300)
                tint(255,alpha.tinte)
                sprite("Documents:Choice_Yes",1/3*WIDTH,1/5*HEIGHT-20,250)
                tint(255)
                sprite("Documents:Board",8/20*WIDTH,0.44*HEIGHT,400)
                sprite("Documents:Notice_Health",8/20*WIDTH-113,0.44*HEIGHT+2,60)
                c[num]:draw(8/20*WIDTH,0.6*HEIGHT)
                player[turn]:draw(12/20*WIDTH,0.59*HEIGHT,500)
                for j1=1,player[turn].healthmax do
                    sprite("Documents:Notice_HealthEmpty",8/20*WIDTH-30+(j1-1)*30,0.44*HEIGHT+2,35)
                end
                for j2=1,player[turn].health do
                    sprite("Documents:Notice_HealthFull",8/20*WIDTH-30+(j2-1)*30,0.44*HEIGHT+2,35)
                end
                    
                sprite("Documents:Choice_No",2/3*WIDTH,1/5*HEIGHT-20,250)
                if CurrentTouch.x>=2/3*WIDTH-125 
                and CurrentTouch.x<=2/3*WIDTH+125 
                and CurrentTouch.y>=1/5*HEIGHT-70
                and CurrentTouch.y<=1/5*HEIGHT+30
                and CurrentTouch.state==BEGAN then
                    badresponse(attack,num)
                    return 1
                end
                if CurrentTouch.x>=1/3*WIDTH-125 
                and CurrentTouch.x<=1/3*WIDTH+125 
                and CurrentTouch.y>=1/5*HEIGHT-70
                and CurrentTouch.y<=1/5*HEIGHT+30
                and CurrentTouch.state==BEGAN
                and pressable==1 then   
                    kind=temp
                end
            end   
        end
        if c[num].sn==1 then
            if attack>0 then
                tint(255,70)
                sprite("Documents:Board_BlueLong",1/2*WIDTH,11/20*HEIGHT,1300)
                
                notice2(attack,num)
                
                tint(255,alpha.tinte)
                sprite("Documents:Choice_Yes",1/3*WIDTH,1/5*HEIGHT-20,250)
                tint(255)
                sprite("Documents:Board",8/20*WIDTH,0.44*HEIGHT,400)
                sprite("Documents:Notice_Health",8/20*WIDTH-113,0.44*HEIGHT+2,60)
                c[num]:draw(8/20*WIDTH,0.6*HEIGHT)
                player[turn]:draw(12/20*WIDTH,0.59*HEIGHT,500)
                for j1=1,player[turn].healthmax do
                    sprite("Documents:Notice_HealthEmpty",8/20*WIDTH-30+(j1-1)*30,0.44*HEIGHT+2,35)
                end
                for j2=1,player[turn].health do
                    sprite("Documents:Notice_HealthFull",8/20*WIDTH-30+(j2-1)*30,0.44*HEIGHT+2,35)
                end   
                sprite("Documents:Choice_No",2/3*WIDTH,1/5*HEIGHT-20,250)
                if CurrentTouch.x>=2/3*WIDTH-125 
                and CurrentTouch.x<=2/3*WIDTH+125 
                and CurrentTouch.y>=1/5*HEIGHT-70
                and CurrentTouch.y<=1/5*HEIGHT+30
                and CurrentTouch.state==BEGAN then
                    badresponse(attack,num)
                    return 1
                end
                if CurrentTouch.x>=1/3*WIDTH-125 
                and CurrentTouch.x<=1/3*WIDTH+125 
                and CurrentTouch.y>=1/5*HEIGHT-70
                and CurrentTouch.y<=1/5*HEIGHT+30
                and CurrentTouch.state==BEGAN
                and pressable==1 then   
                    kind=temp
                    if attack==1 and (c[num].colour==1 or c[num].colour==4) and player[turn].weapon[2]==1 and player[hold].weapon[1]~=4 then
                        sound("Game Sounds One:Whoosh 3")
                        if attack==1 and player[hold].weapon[1]==5 then
                            player[hold].attacktime = player[hold].attacktime + 1
                        end
                        response(attack)
                        return 1
                    end
                    if attack==2 or attack==6 or attack==7 then
                        response(attack)
                        return 1
                    end
                end
            else
                
                notice2(attack,num)
                
                tint(255,70)
                sprite("Documents:Board_Blue",3/10*WIDTH,3/5*HEIGHT,700)
                sprite("Documents:Board_Red",8/10*WIDTH,2/5*HEIGHT,500)
                tint(255,alpha.tinte)
                sprite("Documents:Choice_Yes",1/3*WIDTH,1/5*HEIGHT-20,250)
                tint(255)
                sprite("Documents:Board",1/5*WIDTH,0.5*HEIGHT,400)
                sprite("Documents:Notice_Health",1/5*WIDTH-113,0.5*HEIGHT+2,60)
                c[num]:draw(1/5*WIDTH,0.64*HEIGHT+10)
                player[turn]:draw(2/5*WIDTH,0.63*HEIGHT,470)
                for j1=1,player[turn].healthmax do
                    sprite("Documents:Notice_HealthEmpty",1/5*WIDTH-30+(j1-1)*30,0.5*HEIGHT+2,35)
                end
                for j2=1,player[turn].health do
                    sprite("Documents:Notice_HealthFull",1/5*WIDTH-30+(j2-1)*30,0.5*HEIGHT+2,35)
                end
                for g=1,5 do
                    if player[g].enlight==1 then
                        choose=g
                        sprite("Documents:Board",0.85*WIDTH-20,0.35*HEIGHT,350)
                        sprite("Documents:Notice_Health",0.85*WIDTH-97,0.35*HEIGHT+1,47)
                        for j1=1,player[g].healthmax do
                            sprite("Documents:Notice_HealthEmpty",0.85*WIDTH-40+(j1-1)*28,0.35*HEIGHT+1,30)
                        end
                        for j2=1,player[g].health do
                            sprite("Documents:Notice_HealthFull",0.85*WIDTH-40+(j2-1)*28,0.35*HEIGHT+1,30)
                        end
                        player[g]:draw(0.68*WIDTH-8,2/5*HEIGHT+15,330)
                        ka = ka + 1
                        alpha.tinte=255
                    end
                    ka = ka + 1
                end
                if ka==5 then
                    sprite("Documents:People?",8/10*WIDTH,2/5*HEIGHT+15,350)
                    alpha.tinte=30
                    pressable=0
                end
                ka=0
                sprite("Documents:Choice_No",2/3*WIDTH,1/5*HEIGHT-20,250)
                --sprite("Documents:Board_Blue",length.a,3/5*HEIGHT,700)
                --sprite("Documents:Board_Red",11/10*WIDTH-length.a,2/5*HEIGHT,500)
                --tween(0.5,length,{a=3/10*WIDTH})
                if player[turn].attacktime<=0 and temp==1 and player[turn].weapon[1]~=2 then
                    alpha.tinte=30
                    pressable=0
                end
                
                if CurrentTouch.x>=8/10*WIDTH-175 
                and CurrentTouch.x<=8/10*WIDTH+175 
                and CurrentTouch.y>=2/5*HEIGHT-233 
                and CurrentTouch.y<=2/5*HEIGHT+50 
                and CurrentTouch.state==BEGAN then
                    pressed3=1
                end
                if CurrentTouch.x>=2/3*WIDTH-125 
                and CurrentTouch.x<=2/3*WIDTH+125 
                and CurrentTouch.y>=1/5*HEIGHT-70
                and CurrentTouch.y<=1/5*HEIGHT+30
                and CurrentTouch.state==BEGAN then
                    badresponse(attack,num)
                    return 1
                end
                if CurrentTouch.x>=1/3*WIDTH-125 
                and CurrentTouch.x<=1/3*WIDTH+125 
                and CurrentTouch.y>=1/5*HEIGHT-70
                and CurrentTouch.y<=1/5*HEIGHT+30
                and CurrentTouch.state==BEGAN
                and pressable==1 then   
                    kind=temp
                end
            end

        end
    end
    if pressed3==1 then
        dedicate()
    end
    
    if pressed2==1 then
        discard()
    end
    
    if pressed4==1 then
        discard2()
    end
    
    if fin==1 then
        min=0
        fin=0
        pressable2=0
        turn = turn - 1
        return 1
    end

    if fin==2 then
        min=0
        fin=0
        pressable2=0
        return 1
    end
    
    notice(attack,num)

    if kind==1 then --Kill
        sound("Game Sounds One:Pistol")
        if attack==3 or attack==5 then
            response(attack)
            return 1
        else
            attack=1
            player[turn].attacktime = player[turn].attacktime - 1
            hold=turn
            turn=choose-1
            return 1
        end
    end
    
    if kind==2 then --Miss
        sound("Game Sounds One:Whoosh 3")
        if attack==1 and player[hold].weapon[1]==5 then
            player[hold].attacktime = player[hold].attacktime + 1
        end
        response(attack)
        return 1
    end
    
    if kind==3 then
        sound("Game Sounds One:Assembly 2")
        player[turn].health = player[turn].health + 1
        turn = turn - 1
        return 1
    end

    if kind==4 then
        sound("Game Sounds One:Male Grunt 2")
        player[turn].rage = 2
        turn = turn - 1
        return 1
    end
    
    if kind==5 then --Kill
        sound("Game Sounds One:Reload 1")
        attack=2
        hold=turn
        finalhold=turn
        turn=choose-1
        return 1
    end
    
    if kind==6 then
        sound("Game Sounds One:Crowd Boo")
        attack=3
        hold=turn
        return 1
    end
    
    if kind==7 then
        sound("Game Sounds One:Explode Big")
        attack=4
        hold=turn
        return 1
    end
    
    if kind==8 then
        sound("Game Sounds One:Reload 2")
        attack=5
        finalhold=turn
        hold=turn
        turn=choose-1
        return 1
    end
    
    if kind==9 or kind==10 then
        sound("Game Sounds One:Assembly 1")
        ttt=kind
        pressed4=1
    end
    
    if kind==11 then
        sound("Game Sounds One:Crowd Cheer")
        for i=1,5 do
            if player[i].health < player[i].healthmax then
                player[i].health = player[i].health + 1
            end
        end
        turn = turn - 1
        return 1
    end
    
    if kind==12 and min==0 then
        sound("Game Sounds One:Assembly 5")
        for i=1,4 do
            if player[turn].tools[i]==nil then
                if min==0 then
                    min=i
                end
            end
        end
        math.randomseed(math.random(1,1000))
        player[turn].tools[min]=math.floor(math.random(2,4))
        if player[turn].tools[min]==4 then
            math.randomseed(math.random(1,1000))
            player[turn].tools[min]=math.floor(math.random(4,9))
        end
        if min==4 then
            pressed2=1
        else
            min = 0
            turn = turn - 1
            return 1
        end
    end
    
    if kind==13 or kind==14 or kind==15 or kind==16 or kind==17 or kind==18 then
        sound("Game Sounds One:Assembly 7")
        player[turn].weapon[1]=kind-11
        player[turn].range=weaponrange[player[turn].weapon[1]]
        turn = turn - 1
        return 1
    end
    
    if kind==22 or kind==23 then
        sound("Game Sounds One:Assembly 7")
        player[turn].weapon[3]=kind-21
        turn = turn - 1
        return 1
    end
    
    if kind==24 then
        sound("Game Sounds One:Assembly 7")
        player[turn].weapon[2]=kind-23
        turn = turn - 1
        return 1
    end
    
    if kind==19 then
        sound("Game Sounds One:Assembly 4")
        if player[choose].judgement[1]~=7 then
            player[choose].judgement[1]=6
        else
            player[choose].judgement[2]=6
        end
        turn = turn - 1
        return 1
    end
    
    if kind==20 then
        sound("Game Sounds One:Knock 1")
        if player[turn].judgement[1]~=6 then
            player[turn].judgement[1]=7
        else
            player[turn].judgement[2]=7
        end
        turn = turn - 1
        return 1
    end
    
    return 0     
    
end
