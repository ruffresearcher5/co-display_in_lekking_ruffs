function ResGains = getAllMonoResGains( )
%generate vector of all possible res gains given a the Sk fitness
%loss scenario
ResGains=[Res_reward_with_choice(1,1,"Sk","weak","low"),Res_reward_with_choice(1,1,"Sk","weak","medium"),...
    Res_reward_with_choice(1,1,"Sk","weak","high"),Res_reward_with_choice(1,1,"Sk","medium","low"),...
    Res_reward_with_choice(1,1,"Sk","medium","medium"),Res_reward_with_choice(1,1,"Sk","medium","high"),...
    Res_reward_with_choice(1,1,"Sk","strong","low"),Res_reward_with_choice(1,1,"Sk","strong","medium"),...
    Res_reward_with_choice(1,1,"Sk","strong","high"),Res_reward_with_choice(2,1,"Sk","weak","low"),...
    Res_reward_with_choice(2,1,"Sk","weak","medium"),Res_reward_with_choice(2,1,"Sk","weak","high"),...
    Res_reward_with_choice(2,1,"Sk","medium","low"),Res_reward_with_choice(2,1,"Sk","medium","medium"),...
    Res_reward_with_choice(2,1,"Sk","medium","high"),Res_reward_with_choice(2,1,"Sk","strong","low"),...
    Res_reward_with_choice(2,1,"Sk","strong","medium"),Res_reward_with_choice(2,1,"Sk","strong","high"),...
    Res_reward_with_choice(3,1,"Sk","weak","medium"),Res_reward_with_choice(3,1,"Sk","weak","high"),...
    Res_reward_with_choice(3,1,"Sk","medium","low"),Res_reward_with_choice(3,1,"Sk","medium","medium"),...
    Res_reward_with_choice(3,1,"Sk","medium","high"),Res_reward_with_choice(3,1,"Sk","strong","low"),...
    Res_reward_with_choice(3,1,"Sk","strong","medium"),Res_reward_with_choice(3,1,"Sk","strong","high"),...
    Res_reward_with_choice(4,1,"Sk","weak","medium"),Res_reward_with_choice(4,1,"Sk","weak","high"),...
    Res_reward_with_choice(4,1,"Sk","medium","low"),Res_reward_with_choice(4,1,"Sk","medium","medium"),...
    Res_reward_with_choice(4,1,"Sk","medium","high"),Res_reward_with_choice(4,1,"Sk","strong","low"),...
    Res_reward_with_choice(4,1,"Sk","strong","medium"),Res_reward_with_choice(4,1,"Sk","strong","high"),...
    Res_reward_with_choice(5,1,"Sk","weak","medium"),Res_reward_with_choice(5,1,"Sk","weak","high"),...
    Res_reward_with_choice(5,1,"Sk","medium","low"),Res_reward_with_choice(5,1,"Sk","medium","medium"),...
    Res_reward_with_choice(5,1,"Sk","medium","high"),Res_reward_with_choice(5,1,"Sk","strong","low"),...
    Res_reward_with_choice(5,1,"Sk","strong","medium"),Res_reward_with_choice(5,1,"Sk","strong","high"),...
    Res_reward_with_choice(6,1,"Sk","weak","medium"),Res_reward_with_choice(6,1,"Sk","weak","high"),...
    Res_reward_with_choice(6,1,"Sk","medium","low"),Res_reward_with_choice(6,1,"Sk","medium","medium"),...
    Res_reward_with_choice(6,1,"Sk","medium","high"),Res_reward_with_choice(6,1,"Sk","strong","low"),...
    Res_reward_with_choice(6,1,"Sk","strong","medium"),Res_reward_with_choice(6,1,"Sk","strong","high"),...
    Res_reward_with_choice(7,1,"Sk","weak","medium"),Res_reward_with_choice(7,1,"Sk","weak","high"),...
    Res_reward_with_choice(7,1,"Sk","medium","low"),Res_reward_with_choice(7,1,"Sk","medium","medium"),...
    Res_reward_with_choice(7,1,"Sk","medium","high"),Res_reward_with_choice(7,1,"Sk","strong","low"),...
    Res_reward_with_choice(7,1,"Sk","strong","medium"),Res_reward_with_choice(7,1,"Sk","strong","high"),...
    Res_reward_with_choice(2,2,"Sk","weak","medium"),Res_reward_with_choice(2,2,"Sk","weak","high"),...
    Res_reward_with_choice(2,2,"Sk","medium","low"),Res_reward_with_choice(2,2,"Sk","medium","medium"),...
    Res_reward_with_choice(2,2,"Sk","medium","high"),Res_reward_with_choice(2,2,"Sk","strong","low"),...
    Res_reward_with_choice(2,2,"Sk","strong","medium"),Res_reward_with_choice(2,2,"Sk","strong","high"),...
    Res_reward_with_choice(3,2,"Sk","weak","medium"),Res_reward_with_choice(3,2,"Sk","weak","high"),...
    Res_reward_with_choice(3,2,"Sk","medium","low"),Res_reward_with_choice(3,2,"Sk","medium","medium"),...
    Res_reward_with_choice(3,2,"Sk","medium","high"),Res_reward_with_choice(3,2,"Sk","strong","low"),...
    Res_reward_with_choice(3,2,"Sk","strong","medium"),Res_reward_with_choice(3,2,"Sk","strong","high"),...
    Res_reward_with_choice(4,2,"Sk","weak","medium"),Res_reward_with_choice(4,2,"Sk","weak","high"),...
    Res_reward_with_choice(4,2,"Sk","medium","low"),Res_reward_with_choice(4,2,"Sk","medium","medium"),...
    Res_reward_with_choice(4,2,"Sk","medium","high"),Res_reward_with_choice(4,2,"Sk","strong","low"),...
    Res_reward_with_choice(4,2,"Sk","strong","medium"),Res_reward_with_choice(4,2,"Sk","strong","high"),...
    Res_reward_with_choice(5,2,"Sk","weak","medium"),Res_reward_with_choice(5,2,"Sk","weak","high"),...
    Res_reward_with_choice(5,2,"Sk","medium","low"),Res_reward_with_choice(5,2,"Sk","medium","medium"),...
    Res_reward_with_choice(5,2,"Sk","medium","high"),Res_reward_with_choice(5,2,"Sk","strong","low"),...
    Res_reward_with_choice(5,2,"Sk","strong","medium"),Res_reward_with_choice(5,2,"Sk","strong","high"),...
    Res_reward_with_choice(6,2,"Sk","weak","medium"),Res_reward_with_choice(6,2,"Sk","weak","high"),...
    Res_reward_with_choice(6,2,"Sk","medium","low"),Res_reward_with_choice(6,2,"Sk","medium","medium"),...
    Res_reward_with_choice(6,2,"Sk","medium","high"),Res_reward_with_choice(6,2,"Sk","strong","low"),...
    Res_reward_with_choice(6,2,"Sk","strong","medium"),Res_reward_with_choice(6,2,"Sk","strong","high"),...
    Res_reward_with_choice(7,2,"Sk","weak","medium"),Res_reward_with_choice(7,2,"Sk","weak","high"),...
    Res_reward_with_choice(7,2,"Sk","medium","low"),Res_reward_with_choice(7,2,"Sk","medium","medium"),...
    Res_reward_with_choice(7,2,"Sk","medium","high"),Res_reward_with_choice(7,2,"Sk","strong","low"),...
    Res_reward_with_choice(7,2,"Sk","strong","medium"),Res_reward_with_choice(7,2,"Sk","strong","high"),...
        Res_reward_with_choice(3,3,"Sk","weak","medium"),Res_reward_with_choice(3,3,"Sk","weak","high"),...
    Res_reward_with_choice(3,3,"Sk","medium","low"),Res_reward_with_choice(3,3,"Sk","medium","medium"),...
    Res_reward_with_choice(3,3,"Sk","medium","high"),Res_reward_with_choice(3,3,"Sk","strong","low"),...
    Res_reward_with_choice(3,3,"Sk","strong","medium"),Res_reward_with_choice(3,3,"Sk","strong","high"),...
    Res_reward_with_choice(4,3,"Sk","weak","medium"),Res_reward_with_choice(4,3,"Sk","weak","high"),...
    Res_reward_with_choice(4,3,"Sk","medium","low"),Res_reward_with_choice(4,3,"Sk","medium","medium"),...
    Res_reward_with_choice(4,3,"Sk","medium","high"),Res_reward_with_choice(4,3,"Sk","strong","low"),...
    Res_reward_with_choice(4,3,"Sk","strong","medium"),Res_reward_with_choice(4,3,"Sk","strong","high"),...
    Res_reward_with_choice(5,3,"Sk","weak","medium"),Res_reward_with_choice(5,3,"Sk","weak","high"),...
    Res_reward_with_choice(5,3,"Sk","medium","low"),Res_reward_with_choice(5,3,"Sk","medium","medium"),...
    Res_reward_with_choice(5,3,"Sk","medium","high"),Res_reward_with_choice(5,3,"Sk","strong","low"),...
    Res_reward_with_choice(5,3,"Sk","strong","medium"),Res_reward_with_choice(5,3,"Sk","strong","high"),...
    Res_reward_with_choice(6,3,"Sk","weak","medium"),Res_reward_with_choice(6,3,"Sk","weak","high"),...
    Res_reward_with_choice(6,3,"Sk","medium","low"),Res_reward_with_choice(6,3,"Sk","medium","medium"),...
    Res_reward_with_choice(6,3,"Sk","medium","high"),Res_reward_with_choice(6,3,"Sk","strong","low"),...
    Res_reward_with_choice(6,3,"Sk","strong","medium"),Res_reward_with_choice(6,3,"Sk","strong","high"),...
    Res_reward_with_choice(7,3,"Sk","weak","medium"),Res_reward_with_choice(7,3,"Sk","weak","high"),...
    Res_reward_with_choice(7,3,"Sk","medium","low"),Res_reward_with_choice(7,3,"Sk","medium","medium"),...
    Res_reward_with_choice(7,3,"Sk","medium","high"),Res_reward_with_choice(7,3,"Sk","strong","low"),...
    Res_reward_with_choice(7,3,"Sk","strong","medium"),Res_reward_with_choice(7,3,"Sk","strong","high"),...
    Res_reward_with_choice(4,4,"Sk","weak","medium"),Res_reward_with_choice(4,4,"Sk","weak","high"),...
    Res_reward_with_choice(4,4,"Sk","medium","low"),Res_reward_with_choice(4,4,"Sk","medium","medium"),...
    Res_reward_with_choice(4,4,"Sk","medium","high"),Res_reward_with_choice(4,4,"Sk","strong","low"),...
    Res_reward_with_choice(4,4,"Sk","strong","medium"),Res_reward_with_choice(4,4,"Sk","strong","high"),...
    Res_reward_with_choice(5,4,"Sk","weak","medium"),Res_reward_with_choice(5,4,"Sk","weak","high"),...
    Res_reward_with_choice(5,4,"Sk","medium","low"),Res_reward_with_choice(5,4,"Sk","medium","medium"),...
    Res_reward_with_choice(5,4,"Sk","medium","high"),Res_reward_with_choice(5,4,"Sk","strong","low"),...
    Res_reward_with_choice(5,4,"Sk","strong","medium"),Res_reward_with_choice(5,4,"Sk","strong","high"),...
    Res_reward_with_choice(6,4,"Sk","weak","medium"),Res_reward_with_choice(6,4,"Sk","weak","high"),...
    Res_reward_with_choice(6,4,"Sk","medium","low"),Res_reward_with_choice(6,4,"Sk","medium","medium"),...
    Res_reward_with_choice(6,4,"Sk","medium","high"),Res_reward_with_choice(6,4,"Sk","strong","low"),...
    Res_reward_with_choice(6,4,"Sk","strong","medium"),Res_reward_with_choice(6,4,"Sk","strong","high"),...
    Res_reward_with_choice(7,4,"Sk","weak","medium"),Res_reward_with_choice(7,4,"Sk","weak","high"),...
    Res_reward_with_choice(7,4,"Sk","medium","low"),Res_reward_with_choice(7,4,"Sk","medium","medium"),...
    Res_reward_with_choice(7,4,"Sk","medium","high"),Res_reward_with_choice(7,4,"Sk","strong","low"),...
    Res_reward_with_choice(7,4,"Sk","strong","medium"),Res_reward_with_choice(7,4,"Sk","strong","high"),...
    Res_reward_with_choice(5,5,"Sk","weak","medium"),Res_reward_with_choice(5,5,"Sk","weak","high"),...
    Res_reward_with_choice(5,5,"Sk","medium","low"),Res_reward_with_choice(5,5,"Sk","medium","medium"),...
    Res_reward_with_choice(5,5,"Sk","medium","high"),Res_reward_with_choice(5,5,"Sk","strong","low"),...
    Res_reward_with_choice(5,5,"Sk","strong","medium"),Res_reward_with_choice(5,5,"Sk","strong","high"),...
    Res_reward_with_choice(6,5,"Sk","weak","medium"),Res_reward_with_choice(6,5,"Sk","weak","high"),...
    Res_reward_with_choice(6,5,"Sk","medium","low"),Res_reward_with_choice(6,5,"Sk","medium","medium"),...
    Res_reward_with_choice(6,5,"Sk","medium","high"),Res_reward_with_choice(6,5,"Sk","strong","low"),...
    Res_reward_with_choice(6,5,"Sk","strong","medium"),Res_reward_with_choice(6,5,"Sk","strong","high"),...
    Res_reward_with_choice(7,5,"Sk","weak","medium"),Res_reward_with_choice(7,5,"Sk","weak","high"),...
    Res_reward_with_choice(7,5,"Sk","medium","low"),Res_reward_with_choice(7,5,"Sk","medium","medium"),...
    Res_reward_with_choice(7,5,"Sk","medium","high"),Res_reward_with_choice(7,5,"Sk","strong","low"),...
    Res_reward_with_choice(7,5,"Sk","strong","medium"),Res_reward_with_choice(7,5,"Sk","strong","high"),...
    Res_reward_with_choice(6,6,"Sk","weak","medium"),Res_reward_with_choice(6,6,"Sk","weak","high"),...
    Res_reward_with_choice(6,6,"Sk","medium","low"),Res_reward_with_choice(6,6,"Sk","medium","medium"),...
    Res_reward_with_choice(6,6,"Sk","medium","high"),Res_reward_with_choice(6,6,"Sk","strong","low"),...
    Res_reward_with_choice(6,6,"Sk","strong","medium"),Res_reward_with_choice(6,6,"Sk","strong","high"),...
    Res_reward_with_choice(7,6,"Sk","weak","medium"),Res_reward_with_choice(7,6,"Sk","weak","high"),...
    Res_reward_with_choice(7,6,"Sk","medium","low"),Res_reward_with_choice(7,6,"Sk","medium","medium"),...
    Res_reward_with_choice(7,6,"Sk","medium","high"),Res_reward_with_choice(7,6,"Sk","strong","low"),...
    Res_reward_with_choice(7,6,"Sk","strong","medium"),Res_reward_with_choice(7,6,"Sk","strong","high"),...
    Res_reward_with_choice(7,7,"Sk","weak","medium"),Res_reward_with_choice(7,7,"Sk","weak","high"),...
    Res_reward_with_choice(7,7,"Sk","medium","low"),Res_reward_with_choice(7,7,"Sk","medium","medium"),...
    Res_reward_with_choice(7,7,"Sk","medium","high"),Res_reward_with_choice(7,7,"Sk","strong","low"),...
    Res_reward_with_choice(7,7,"Sk","strong","medium"),Res_reward_with_choice(7,7,"Sk","strong","high")];


   



end

