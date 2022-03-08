function draw(f,a,b)
clf;
switch a<b
    case true
        x=a*360:b*360;
    case false
        x=b*360:a*360;
end
switch f
    case "sin"
        y=sind(x);
    case "cos"
        y=cosd(x);
    case "tg"
        y=tand(x)/30;
    case "ctg"
        y=cotd(x)/30;
    otherwise
        y=sind(x);
        plot(x,y,"red");
        hold on;
        y=cosd(x);
        plot(x,y,"blue");
        hold on;
        y=tand(x)/30;
        plot(x,y,"magenta");
        hold on;
        y=cotd(x)/30;
end
z = 0 * ones(1, length(x));
plot(x,y,"black");
hold on;
plot(x,z,"black");
grid on;
end