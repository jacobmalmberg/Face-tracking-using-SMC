function particles = initParticlesGlobal(imageSize,noParticles)
% Init particles with x,y, weight
%INPUT  - noParticles   1x1
%       - bBox          1x4
%OUTPUT - particles 	Mx3
particles=zeros(noParticles, 5);

x = randi([1 imageSize(2)],1,noParticles);
y = randi([1 imageSize(1)],1,noParticles);
dx = 0;
dy = 0;
particles(:,1) = x;
particles(:,2) = y;
particles(:,3) = 1/noParticles;
particles(:,4) = dx;
particles(:,5) = dy;

end

