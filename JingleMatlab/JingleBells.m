clear all
close all
clc

%% Timing definitions
bpm = 200;

fs = 44000;

%% Notes
notes = cell(32,2);

notes{1,1} = 'e'; notes{1,2} = 1;
notes{2,1} = 'e'; notes{2,2} = 1/2;
notes{3,1} = 'e'; notes{3,2} = 1;
notes{4,1} = 'c'; notes{4,2} = 1/2;
notes{5,1} = 'd'; notes{5,2} = 1/1.5;
notes{6,1} = 'c'; notes{6,2} = 1/2;
notes{7,1} = 'e'; notes{7,2} = 1;
notes{8,1} = 'e'; notes{8,2} = 1/2.5;
notes{9,1} = 'e'; notes{9,2} = 2;
notes{10,1} = 'e'; notes{10,2} = 1;
notes{11,1} = 'g'; notes{11,2} = 1;
notes{12,1} = 'c'; notes{12,2} = 1/2;
notes{13,1} = 'd'; notes{13,2} = 1/2;
notes{14,1} = 'd#'; notes{14,2} = 1/2;
notes{15,1} = 'e'; notes{15,2} = 3;
notes{16,1} = 'f'; notes{16,2} = 1;
notes{17,1} = 'f'; notes{17,2} = 1;
notes{18,1} = 'f'; notes{18,2} = 2;
notes{19,1} = 'f'; notes{19,2} = 1/2;
notes{20,1} = 'f'; notes{20,2} = 1;
notes{21,1} = 'e'; notes{21,2} = 1;
notes{22,1} = 'e';notes{22,2} = 2;
notes{23,1} = 'e'; notes{23,2} = 1/2;
notes{24,1} = 'e'; notes{24,2} = 1;
notes{25,1} = 'd'; notes{25,2} = 1;
notes{26,1} = 'd'; notes{26,2} = 1;
notes{27,1} = 'e'; notes{27,2} = 1;
notes{28,1} = 'd'; notes{28,2} = 1/2;
notes{29,1} = 'e'; notes{29,2} = 1/2;
notes{30,1} = 'd'; notes{30,2} = 1/2;
notes{31,1} = 'c'; notes{31,2} = 1/2;
notes{32,1} = 'g'; notes{32,2} = 2;

%% Music
disp('Jingle Bells - Matlab edition')
pause(3)
for c=1:length(notes(:,1))
    t = 0:1/fs:round(60/bpm*notes{c,2}*fs)/fs;
    note = [0:1/round(length(t)/10):1 ones(1,round(length(t)*8/10)-2) 1:-1/round(length(t)/10):0].*sin(2*pi*NoteToFreq(notes{c,1})*t(1:end));
    sound(note,fs);
    tic
    clc
    disp([notes{c,1},' - ',num2str(notes{c,2})]);
    pause(t(end) - toc)
end
clc
disp('Thank you!')
pause(3)
clear all
clc