#!/bin/sh

bam() {

  random_adjective() {
    adjectives="adaptable,adventurous,affable,affectionate,agreeable,ambitious,amiable,amicable,amusing,brave,bright,broad-minded,calm,careful,charming,communicative,compassionate,conscientious,considerate,convivial,courageous,courteous,creative,decisive,determined,diligent,diplomatic,discreet,dynamic,easygoing,emotional,energetic,enthusiastic,exuberant,fair-minded,faithful,fearless,forceful,frank,friendly,funny,generous,gentle,good,gregarious,hard-working,helpful,honest,humorous,imaginative,impartial,independent,intellectual,intelligent,intuitive,inventive,kind,loving,loyal,modest,neat,nice,optimistic,passionate,patient,persistent,pioneering,philosophical,placid,plucky,lucky,polite,powerful,practical,pro-active,quick-witted,quiet,rational,reliable,reserved,resourceful,romantic,self-confident,self-disciplined,sensible,sensitive,shy,sincere,sociable,straightforward,sympathetic,thoughtful,tidy,tough,unassuming,understanding,versatile,warmhearted,willing,witty,aggressive,aloof,arrogant,belligerent,big-headed,bitchy,boastful,bone-idle,boring,bossy,callous,cantankerous,careless,changeable,clinging,compulsive,conservative,cowardly,cruel,cunning,cynical,deceitful,detached,dishonest,dogmatic,domineering,finicky,flirtatious,foolish,foolhardy,fussy,greedy,grumpy,gullible,harsh,impatient,impolite,impulsive,inconsiderate,inconsistent,indecisive,indiscreet,inflexible,interfering,intolerant,irresponsible,jealous,lazy,machiavellian,materialistic,mean,miserly,moody,narrow-minded,nasty,naughty,nervous,obsessive,obstinate,overcritical,overemotional,parsimonious,patronizing,perverse,pessimistic,pompous,possessive,pusillanimous,quarrelsome,quick-tempered,resentful,rude,ruthless,sarcastic,secretive,selfish,self-centred,self-indulgent,silly,sneaky,stingy,stubborn,stupid,superficial,tactless,timid,touchy,thoughtless,truculent,unkind,unpredictable,unreliable,untidy,untrustworthy,vague,vain,vengeful,vulgar,weak-willed,"
    INDEX=$(echo "$adjectives" | awk 'BEGIN { FS = ","; srand(); } ; { print int(rand() * NF) }')
    echo "$adjectives" | awk 'BEGIN { FS = ","; srand(); } ; { print $"'"$INDEX"'" }'
  }

  random_noun() {
    nouns="time,year,people,way,day,man,thing,woman,life,child,world,school,state,family,student,group,country,problem,hand,part,place,case,week,company,system,program,question,work,government,number,night,point,home,water,room,mother,area,money,story,fact,month,lot,right,study,book,eye,job,word,business,issue,side,kind,head,house,service,friend,father,power,hour,game,line,end,member,law,car,city,community,name,president,team,minute,idea,kid,body,information,back,parent,face,others,level,office,door,health,person,art,war,history,party,result,change,morning,reason,research,girl,guy,moment,air,teacher,force,education,boy,cat,bread,bush,farmer,girl,dog,meat,flower,policeman,man,bird,soup,grass,cook,woman,fish,apple,plant,doctor,baby,rabbit,cereal,tree,nurse,ball,table,water,sun,television,doll,chair,milk,moon,radio,train,sofa,juice,star,movie,game,chest,soda,cloud,ball,game,toy,desk,tea,rain,band,one,cup,six,lake,pen,two,plate,seven,rock,pencil,three,bowl,eight,dirt,crayon,four,fork,nine,field,chalk,five,spoon,ten,hill,computer,shirt,car,fruit,horse,book,pants,truck,orange,cow,newspaper,dress,bus,grape,pig,magazine,shoes,plane,pear,chicken,sign,hat,boat,banana,duck,letter"
    INDEX=$(echo "$nouns" | awk 'BEGIN { FS = ","; srand(); } ; { print int(rand() * NF) }')
    echo "$nouns" | awk 'BEGIN { FS = ","; srand(); } ; { print $"'"$INDEX"'" }'
  }

  while true; do

    adjective=$(random_adjective);
    noun=$(random_noun);

    newBam="$adjective-$noun"
    newBamDir="$BAM_DIR/$newBam"

    test -d $newBamDir || break
  done

  mkdir -p $newBamDir

  cd $newBamDir

}

