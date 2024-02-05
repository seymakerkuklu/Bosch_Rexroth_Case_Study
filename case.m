clc;
clear;

isi_atimi=[68 72 80 88 96 100 104 111 116 120 124 140 128 120 116];
dizel_motor_devri=800:100:2500;

radyator_isi_sogurma_kapasitesi=[80 84 88 100 108 120 128 140 148 156 160];
fanin_ihtiyac_duydugu_tork=[16 28 40 44 52 68 80 132 133 144 160];
isi_sogurma_fan__tork_rpm=[500 700 900 1100 1300 1500 1700 2200 2350 2400 2500];

%pump

Vg1=[22 25 28 32 36 40 45 50];
Vg2max=[18 28 36 45 71 88];

p1=250;
p2max=350;

n1max=[3000 3000 3000 2800 2800 2800 2600 2600];


nv=0.9;
for i=1:8
    qv1(i)=Vg1(i)*n1max(i)*nv/1000;
end
 


for i=1:6
        n2nom=[3300,3000,2800,2600,2200,2100];
        qv2(i)=Vg2max(i)*n2nom(i)*nv/1000;

%     elseif(Vg<Vgmax^2)
%         nmax_perm=350;
%         qv2(i)=Vg(i)*nmax_perm*nv/1000;
%     end

end


nhm=0.95;
for i=1:8
    tork1(i)=Vg1(i)*p1/(20*3.14*nhm);
end

for i=1:6
    tork2(i)=Vg2max(i)*p2max/(20*3.14*nhm);
end

qv1
qv2
tork1
tork2

for i=1:8
    power1(i)=2*3.14*tork1(i)*n1max(i)/60000;
end
power1

for i=1:6
    power2(i)=2*3.14*tork2(i)*n2nom(i)/60000;
    
end


% for i=1:8
%     efficiency1(i)=(qv1(i)*p1)/(power1(i)*600)
% end
% 
% 
% for i=1:6
%     efficiency2(i)=(qv2(i)*p2max)/(power2(i)*600)
% end
power2

for i=1:6
    vgp1(i)=Vg2max(i)*p2max;
end

vgp1

