vrclear
world = vrworld('mywrl.WRL');
open(world);

figure = view(world, '-internal');
vrdrawnow;
%nodes(world);

%World Objects
mainCamera = vrnode(world,'Main_Camera');
mainCamera.set_bind=true;

van = vrnode(world,'Van');

pause(0.5);
mainCamera.position = [0,5.6,35];
vrdrawnow;

pause(1);
mainCamera.orientation = [0,1,0,1.5];
vrdrawnow;

destination = -50;
start_point = van.translation(1);
%disp(start_point);
while(destination < start_point)
    disp(start_point);
    van.translation = [start_point,van.translation(2),van.translation(3)];
    start_point = start_point - 1;
    vrdrawnow;
    pause(0.1);
end

vrdrawnow;

pause(0.5);
mainCamera.orientation = [70,-750,-35,-1];
vrdrawnow;


pause(0.5);
mainCamera.position = [0,5.6,25];
vrdrawnow;

pause(0.5);


van.translation = [-30,3.6,15];
mainCamera.position = [0,5.6,15];

%mainCamera.orientation = [10,-590,50,-2.5];
mainCamera.orientation = [-50,800,50,90];
vrdrawnow;
%vrdrawnow;
%Test
%Camera position -0,5.6,35
%Camera Orientation - 1,0,0,-5 X - Axis
%Camera Orientation - 0,1,0,90 Y - Axis
%Camera Position - 0,5.6,15