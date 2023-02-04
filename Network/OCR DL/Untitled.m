
i = camera.snapshot;              % Take a picture    
    i = imresize(i,[200,800]);
    image(i);
    drawnow;
    