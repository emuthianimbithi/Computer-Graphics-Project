world = vrworld('final.WRL');
open(world);

fig = view(world, '-internal');
vrdrawnow;
%nodes(world);

%World Objects
man = vrnode(world,'Man');
backDoor = vrnode(world,'Back_Door');
camera = vrnode(world,'Camera');
boy = vrnode(world,'Boy');
girl = vrnode(world,'Girl');
van = vrnode(world,'Van');

%camera.position =[-57.7999,1.6,0.0];
camera.position = [19,-2.5,-56];
camera.orientation =[0,1,0,-10.2624];
vrdrawnow;


man.translation = [17,-3,-53];

man.rotation = [0,1,0,0];
while(man.translation(3) < -42)
    destination = man.translation(3) + 1;
    man.translation = [12,-3,destination];
    vrdrawnow;
    pause(0.1);

end



%Man Faces the Backdoor

%Move Camera to the end of the hall
camera.position = [-10,-1.5,-43];

%Makes the camera face the Backdoor
camera.orientation =[0,1,0,11.0];

%Boy Exit Room
man.rotation = [0,1,0,90];

while(boy.translation(3) < -42)
    destination = boy.translation(3) + 1;
    boy.translation = [-1,-4.57,destination];
    girl.translation = [7.844,-4.57,destination];
    vrdrawnow;
    pause(0.1);

end



%Boy Faces the Back door
boy.rotation = [0,1,0,90];

%Boy Faces the Back door
girl.rotation = [0,1,0,90];

vrdrawnow;
    pause(1);
%Move Boy near the girl
boy.translation = [7.844,-4.57,-42];

%Move girl to walk with the boy
girl.translation = [7.844,-4.57,-43.5];

vrdrawnow;
    pause(1);

%Move Camera near the Characters
camera.position = [6,-1.5,-43];

%Move Father towards the backdoor
man.translation = [25,-3,-42];

vrdrawnow;
    pause(1);
%Open backdoor
backDoor.rotation=[0,1,0,0];
backDoor.translation = [26,-2,-39.95];

vrdrawnow;
    pause(1);
%Move Kids towards the father
%Boy
boy.translation = [22,-4.57,-42];
%Girl
girl.translation = [22.844,-4.57,-43.5];

vrdrawnow;
    pause(1);
%Rotate Characters towards the pathway
man.rotation=[0,1,0,160];

%Move Father along the pathway
man.translation=[25,-3,-55];

vrdrawnow;
    pause(1);

%Move Camera
camera.position = [35,-2,-64];%Animate Z
camera.orientation = [0,1,0,-10.05];

vrdrawnow;
    pause(0.1);
%Move Children along the pathway
man.translation=[25,-3,-55];


vrdrawnow;
    pause(1);
%Boy
boy.rotation=[0,1,0,160];
boy.translation = [25,-4.5,-52];
%Girl
girl.rotation=[0,1,0,160];
girl.translation = [25.844,-3.5,-52];

vrdrawnow;
    pause(1);




%Move Camera 
camera.position = [30,-2,-64];%Animate Position X
camera.orientation = [0,1,0,-10.05];


vrdrawnow;
    pause(1);
    
%Move Camera
camera.position = [29,-2,-64];
camera.orientation = [0,1,0,-11.05];

vrdrawnow;
    pause(1);
    

%Rotate Man Towards the van 
man.translation=[20,-3,-62.5];%Animate Position X
man.rotation=[0,1,0,-1.5];


vrdrawnow;
    pause(1);
    
%Move Man Towards the van 
man.translation=[10,-3,-62.5];%Animate Position X

%Rotate Children Towards Van
%Boy
boy.rotation=[0,1,0,-1.5];
boy.translation = [25,-4.5,-62.5];
%Girl
girl.rotation=[0,1,0,-1.5];
girl.translation = [25.844,-3.5,-63.5];


%Move Children Towards the van Animate X


%Boy 
boy.translation = [15,-4.5,-62.5];
%Girl
girl.translation = [15.844,-3.5,-63.5];

%Move Camera Towards Characters
camera.position = [20,-2,-64];

%Animate Position X
%%%%% Move CHaracters to the Van  %%%%%%%%%%%%
man.translation=[-10,-3,-62.5];
%Boy 
boy.translation = [-8,-4.5,-62.5];
%Girl
girl.translation = [-8.844,-3.5,-63.5];
%Camera
camera.position = [-2.5,-2,-64];


%Change Camera Angle
camera.position = [-2.5,-1,-70];
camera.orientation = [0,1,0,-10.05];



%Move Man into the van
man.translation=[-13,-2.1,-62.5];
%Man Faces the driveway
man.rotation=[0,1,0,0.0];


%Move Boy into the van
boy.translation=[-15,-2.1,-65.5];
%Man Faces the driveway
boy.rotation=[0,1,0,0.0];

%Move Boy into the van
girl.translation=[-13,-2.1,-65.5];
%Man Faces the driveway
girl.rotation=[0,1,0,0.0];

%Move Camera Above the van and change the angle
camera.position = [-15,0,-85];
camera.orientation = [0,1,0,-9.460];



%%Animate Position Z



while van.translation(3) < -17
    vanY = van.translation(3) + 1;
    van.translation =[-14.55,-3,vanY];
     manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];
    vrdrawnow;  
    pause(0.2);
    
end





%Move Camera with the van 
camera.position =[-15,0,-45];

%Change Camera infront of the van
camera.position =[-15,0,0];
camera.orientation = [0,0,0,0];


%%%%%%%%%%%%%%%%%%%%Animate another car moving on the Road%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%Animate another car moving on the Road%%%%%%%%%%%%%%%%%%%%%%%




%Change Camera infront of the van
camera.position =[-15,0,0];
camera.orientation = [0,0,0,0];


%Change Camera infront of the van
angle = deg2rad(55);
camera.position =[0,0,5];
camera.orientation = [0,1,0,angle];


%van.translation =[-14.55,-3,-20];
van.translation =[-14.55,-3,-17];

 manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%MAKE THE VAN TURN%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%1
%Reduce the angle on the Y-Axis
van.rotation =[0,1,0,1];
camera.position =[0,0,5];
camera.orientation = [0,1,0,1];
 manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];
    

%2
%Reduce the angle on the Y-Axis
van.translation =[-14.55,-3,-14];
van.rotation =[0,1,0,1];
camera.position =[0,0,5];
camera.orientation = [0,1,0,1.2];
 manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];
    
vrdrawnow;
pause(0.2);
%3
%Reduce the angle on the Y-Axis
van.translation =[-14.55,-3,-13];
van.rotation =[0,1,0,0.5];
camera.position =[0,0,4];
camera.orientation = [0,1,0,1.1];

 manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];
    
vrdrawnow;
pause(0.2);
%4
%Reduce the angle on the Y-Axis
van.translation =[-14.55,-3,-10.5];
van.rotation =[0,1,0,0.0];

 manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];
    

camera.position =[0,0,4];
camera.orientation = [0,1,0,1.1];
vrdrawnow;
pause(0.2);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%MOVE TOWARDS THE SCHOOL%%%%%%%%%%%%%%%%%%%%%%%% %ANIMATE X

angle = deg2rad(0);
van.rotation = [0,1,0,angle];
while(van.translation(1) > -175.55)
    angle = deg2rad(-90);
    vanX = van.translation(1) - 1;  
    van.translation =[vanX,-3,-5.5];
    
    cameraX = vanX + 20;
        
    camera.position =[cameraX,camera.position(2),camera.position(3)];
    manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];
    
    disp(van.translation(1));
    vrdrawnow;
    pause(0.1);
    
end




%Change camera to the parking lot
camera.position =[-210,0,40];
camera.orientation = [0,1,0,-0.5];
angle = deg2rad(20);
van.rotation =[0,1,0,angle];
van.translation =[-185.55,-3,25.5];


camera.position =[-210,0,40];
camera.orientation = [0,1,0,-0.5];
%while 
    
%end


%Rotate Van


van.rotation =[0,1,0,0.75];

van.translation =[-185.55,-3,20.5];


manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];

camera.position =[-200,0,55];
camera.orientation = [0,0,0,0];

    vrdrawnow;
    pause(2);
van.translation =[-195.55,-3,25.5];

manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];


    vrdrawnow;
    pause(2);
camera.position =[-200,0,65];
camera.orientation = [0,0,0,0];

%Straigten Van
van.translation =[-195.55,-3,35.5];
van.rotation =[0,1,0,20.20];

manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    
    boyX = manX + 2;
    boyY = manY;
    boyZ = manZ-1;
    
    girlX = manX + 2;
    girlY = manY;
    girlZ = manZ;
    
    boy.translation=[boyX,boyY,boyZ];
    boy.rotation=[0,1,0,angle];

    girl.translation=[girlX,girlY,girlZ];
    girl.rotation=[0,1,0,angle];
    

    man.rotation= [0,1,0,angle];
    man.translation=[manX,man.translation(2),manZ];



%%%%%%%%%%%%%%%%%%%Drop Children%%%%%%%%%%%%%%%%%%%
%Move Man into the van
%Man Faces the driveway
man.rotation=[0,1,0,0.0];


%Move Boy into the van
boy.translation=[-196,-2.1,35.5];
%Man Faces the driveway
boy.rotation=[0,1,0,0.0];

%Move Boy into the van
girl.translation=[-197,-2.1,35.5];
%Man Faces the driveway
girl.rotation=[0,1,0,0.0];

camera.position =[-200,0,55];
%%%%%%%%%%%%%%%%%%%Drop Children%%%%%%%%%%%%%%%%%%%

%Change Camera


camera.orientation = [0,1,0,1];
camera.position =[-180,0,45];


%Move Boy into the van
boy.translation=[-189,-3,35.5];
%Man Faces the driveway
boy.rotation=[0,1,0,0.0];

%Move Boy into the van
girl.translation=[-190,-3,35.5];
%Man Faces the driveway
girl.rotation=[0,1,0,0.0];

%%%%%%%%%%%%%%%%%%%%ANIMATE MOVEMENT TOWARDS SCHOOL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


while(boy.translation(3) < 70)
    
    
    if boy.translation(3) == 47.5
        camera.orientation = [0,1,0,2];
        camera.position =[-180,0,45];
    end
    girlZ = girl.translation(3) + 0.5;
    girl.translation = [-190,-3,girlZ];
    
    boyZ = girl.translation(3) - 3;
    boy.translation = [-190,-3,boyZ];
    
    vrdrawnow;
    pause(0.1);
    
end


%camera.orientation = [0,1,0,1.5];
%camera.position =[-180,0,45];


%Straigten Van

while(van.translation(3) < 45.5)
    vanZ = van.translation(3) + 0.5;
    van.translation =[-195.55,-3,vanZ];
    if van.translation(3) < 40
       angle = van.rotation(4) - 0.37; 
       vanX = van.translation(1) + 0.5;
       van.translation =[-195.55,-3,vanZ];
       van.rotation =[0,1,0,angle];  
    end
    
    manZ = van.translation(3)+1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    man.translation=[manX,man.translation(2),manZ];
    vrdrawnow;
    pause(0.01);
    
end



van.translation =[-195.55,-3,45.5];
camera.orientation = [0,1,0,0.0];
camera.position =[-195.55,0,65];
angle = deg2rad(-90);
van.rotation=[0,1,0,angle];

%%%%%%%%%%%%%%%%%%%%%%%%MOVE THE VAN TOWARDS THE ROAD%%%%%%%%%%%%%%%%%%%%%%%%


angle = deg2rad(-180);
man.rotation=[0,1,0,angle];

while(van.translation(3) > 25.5)
    vanZ = van.translation(3) - 0.5;
    cameraZ = van.translation(3) + 20;
    camera.position =[-195.55,0,cameraZ];
    van.translation =[-195.55,-3,vanZ];
    manZ = van.translation(3)-1;
    manY = van.translation(2);
    manX = van.translation(1)-1.5;
    man.translation=[manX,man.translation(2),manZ];
    pause(0.1);
    vrdrawnow;
    
end




%angle = deg2rad(-180);
%van.rotation=[0,1,0,angle];

while van.rotation(4) > deg2rad(-180)
   angle = van.rotation(4) - 0.01;
   van.rotation = [0,1,0,angle];
   
   vanZ = van.translation(3) - 0.05;
   vanX = van.translation(1) + 0.05;
   van.translation = [vanX,van.translation(2),vanZ];
   manZ = van.translation(3)+1;
   manY = van.translation(2);
   manX = van.translation(1)-1.5;
   man.translation=[manX,man.translation(2),manZ];
   cameraZ = van.translation(3) + 15;
   camera.position =[-195.55,0,cameraZ];
   vrdrawnow;
   pause(0.1);
    
end


van.translation = [-195.55,-3,5.5];

van.rotation =[0,1,0,3.10];  

manZ = van.translation(3)-1;
manY = van.translation(2);
manX = van.translation(1)+1.5;
man.translation=[manX,man.translation(2),manZ];

angle = deg2rad(90);
man.rotation=[0,1,0,angle];
pause(0.5);

camera.position =[-215.55,0,-5];
camera.orientation = [0,1,0,4.50];


%Move towards the office

while van.translation(1) < 405
   vanX = van.translation(1) + 3;
   cameraX = vanX - 20;
   camera.position =[cameraX,0,camera.position(3)];
    van.translation = [vanX,van.translation(2),van.translation(3)];
   if van.translation(1) == -180
   
        camera.position =[cameraX,0,-5];
        angle = deg2rad(-90);
        disp(angle);
        camera.orientation = [0,1,0,angle];
   elseif van.translation(1) > 50

        camera.position =[cameraX,0,20];
        angle = deg2rad(-45);
        disp(angle);
        camera.orientation = [0,1,0,angle];
   elseif van.translation(1) > 0
        camera.position =[vanX,0,25];
        angle = deg2rad(0);
        disp(angle);
        camera.orientation = [0,1,0,angle];
   else
        camera.orientation = [0,1,0,4.50];
   end
   
manZ = van.translation(3)-1;
manY = van.translation(2);
manX = van.translation(1)+1.5;
man.translation=[manX,man.translation(2),manZ];
    vrdrawnow;
   pause(0.1);
end

camera.position =[405,0,-25];

angle = deg2rad(-180);
camera.orientation = [0,1,0,angle];


%Turn Towards the Office Building

while van.rotation(4) > deg2rad(100)
   angle = van.rotation(4) - 0.01;
   van.rotation = [0,1,0,angle];
   if van.rotation(4) < deg2rad(170)
       vanZ = van.translation(3) + 0.15;
       vanX = van.translation(1) + 0.1;
       van.translation = [vanX,van.translation(2),vanZ];
       
   end
    manZ = vanZ +2.5;
    manY = van.translation(2) -1;
    manX = van.translation(1) -1;
    man.translation=[manX,man.translation(2),manZ];
   vrdrawnow;
   pause(0.01);
    
end



%van.rotation = [0,1,0,angle];
angle = deg2rad(5);
camera.orientation = [0,1,0,angle];
camera.position =[420,0,70];


angle = deg2rad(90);
van.rotation = [0,1,0,angle];
 
while van.translation(3) < 110
    vanZ = van.translation(3) + 0.5;
    van.translation = [vanX,van.translation(2),vanZ];
    manZ = vanZ +2.5;
    manY = van.translation(2) -1;
    manX = van.translation(1) -1;
    man.translation=[manX,man.translation(2),manZ];
    if vanZ > 75
        angle = deg2rad(-130);
        camera.orientation = [0,1,0,angle];
        camera.position =[400,0,70];
        
 
    end
    vrdrawnow;
    pause(0.1);
end


angle = deg2rad(-90);
camera.orientation = [0,1,0,angle];
camera.position =[394,0,110];
vrdrawnow;

%Move Man into the van
manZ = vanZ +2.5;
manY = van.translation(2) -1;
manX = van.translation(1) -1;
man.translation=[manX,man.translation(2),manZ];
man.rotation=[0,1,0,0.0];
%Animate 
vrdrawnow;

pause(1);
while camera.position(1) < (van.translation(1) - 20)
    cameraX = camera.position(1) + 0.5;
    camera.position =[cameraX,0,camera.position(3)];
    disp(cameraX);
    if cameraX > 396
        angle = deg2rad(-90);
        man.rotation=[0,1,0,angle];
    end
    vrdrawnow;
    pause(0.1);
end


%Man enters the building

man.translation=[manX,man.translation(2),manZ];
while(man.translation(1) > 380)
    manX = man.translation(1) - 0.5;
    man.translation=[manX-5,man.translation(2),manZ];
   
    
    if man.translation(1) > 400
        cameraZ = van.translation(3) -20;
        cameraX = van.translation(1) + 5;
       camera.position =[cameraX,camera.position(2),cameraZ];
       angle = deg2rad(130);
       camera.orientation = [0,1,0,angle];
    end
    
    vrdrawnow;
    pause(0.1);

end


%}

vrdrawnow;

