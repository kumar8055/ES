#command to print unassigned shards
curl http://master node: port/_cat/shards?h=index,shard,prirep,state,unassigned.reason | grep UNASSIGNED | awk '{print $1}'

#command to get the indices list along the httplink
curl http://master node: port/_cat/shards?h=index,shard,prirep,state,unassigned.reason | grep UNASSIGNED | awk '{print "http://master node: port/" $1}'
