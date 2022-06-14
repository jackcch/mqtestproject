#Adding user `intapp' to group `intgroup' ...
#Adding user intapp to group intgroup
  
setmqaut -m QM1 -t qmgr -p intapp +all
setmqaut -m QM1 -n QM1.RQST01 -t queue -p intapp +all
setmqaut -m QM1 -n QM1.RPLY01 -t queue -p intapp +all
