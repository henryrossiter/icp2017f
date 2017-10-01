b = 2; % cant start a variable name with a number
a1 = b;
x = 2;
y = x + 4; % is it 6? %x needed to be lowercase
pi = 4 * atan(1); %deleted unnessecary semicolon
disp(pi)
pi = 3.14159; %should not use quotes, pi is a number not a char
disp(tan(pi));
c = 4^3^2^3;
c = ((c-78564)/c + 32); % contained extra closing parenthesis
year = 2017;
disp(['The year is ' num2str(year)]); % convert year to a string with num2str()
stuff = {'a' 'b' 4 21 'c'};
beginning = stuff(1); % cant use 0, changed to index 1
the_end = stuff(5); %end is a reserved word and cant be used as a variable
discount = 12; % semicolon needs to be before comment declaration
AMOUNT = 120; %unneeded negative sign
amount = 120; %cant use dollar sign
and = 'duck'; %if duck is supposed to be a char, it needs quotes
class = 'INF1100, gr 2'; %must use single quotes
continue_ = x > 0;
fox = false; %changed to single equal sign since fox needs to be initiated
wolf = fox == true;
Persian = ['Persian is a human language']; 
Spanish = {'Spanish ' 'is ' ' another'  'language'};
disp(['Persian is not the same as Spanish']);