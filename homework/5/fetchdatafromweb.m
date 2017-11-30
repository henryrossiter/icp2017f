data = webread('http://www.shahmoradi.org/ICP2017F/homework/5-problems/triggers.txt');
fileID = fopen('triggers.txt','W');
    fprintf(fileID,data);  
fclose(fileID);
fileID = fopen('triggers.txt','r');
A = fscanf(fileID,'%f');
fclose(fileID);
for i = 1:length(A)
    addy = ['http://www.shahmoradi.org/ICP2017F/homework/5-problems/swift/GRB00',num2str(A(i)),'_ep_flu.txt']
    try 
        dat = webread(addy);
        fileID = fopen(['GRB00',num2str(A(i)),'_ep_flu.txt'],'W');
        fprintf(fileID,dat);  
        fclose(fileID);
    catch
    end
end