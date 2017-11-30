nExperiments = 100000;
winPercentages = zeros(nExperiments,1);
switchWinPercentages= zeros(nExperiments,1);
wins = 0;
switchWins=0 ;
for i=1:nExperiments
doors = [1,2,3];
car  = randi(3);
choice = randi(3);
notChoice = doors(doors~=choice);
notChoiceNotCar = notChoice(notChoice~=car);
elimination = notChoiceNotCar(randi(size(notChoiceNotCar)));
switchChoice = 6-elimination-choice;
%disp(['choice: ',num2str(choice)])
%disp(['elimination: ',num2str(elimination)])
%disp(['switched choice: ',num2str(switchChoice)])
if choice == car
    wins = wins+1;
end
if switchChoice == car
    switchWins = switchWins+1;
end
winPercentages(i) = wins/i;
switchWinPercentages(i)= switchWins/i;

end
%winPercentages
%switchWinPercentages
plot(winPercentages); hold on
plot(switchWinPercentages);
