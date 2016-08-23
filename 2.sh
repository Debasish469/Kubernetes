#!/bin/bash
#export PATH=$PATH:/bin/docker
export PATH=$PATH:/usr/local/bin/docker
REPO=sibam
## Help funcion 
help() {
cat << END
Usage :
        dockerPramote -c [Community] -f [From] -t [To]

        OPTION          DESCRIPTION
        ----------------------------------
        -h              Help
        -c              Community
        -f [STRING]     From Tag
        -t [STRING]     To Tag
        -b [STRING]     Backup - [Y]
        ----------------------------------
END
}


while getopts "c:f:t:b:" OPT
do
        case $OPT in
        c) COMM="$OPTARG" ;;
        f) FROM="$OPTARG" ;;
        t) TO="$OPTARG" ;;
        b) BACKUP="$OPTARG" ;;
#        *) help ;;
        esac
done

if  [ $# -gt 4 ] && ( [ $# -eq 6 ] || [ $# -le 8 ]  )
then
    if [ "$BACKUP" = "y" ] || [ "$BACKUP" = "Y" ] 
        then
          if [ "$FROM" != "$TO" ]
                then
                     tagCheck=`docker images "$REPO/$COMM" | awk {'print $1":"$2'} | grep -c $REPO/$COMM:$FROM`
                    if [ $tagCheck -ne 1 ]
                        then
                           echo "Requested TO tag not found, Please check \"docker images\""    

		elif  
			comcheck=0;	
			comcheck=`docker images | awk '$1 ~ /$COMM/ { print }' | wc -l` 
			then 

			if [ $comcheck = 0 ] 
			then 
		 echo  "COMMUNITY- $COMM not found"
			else 
			echo "Community Found"
			fi 
fi
			else 		
 				echo "From and To Tags can't be same"
                    		exit 3;
       

	fi			     else
                echo "Backup args should  be (Y/y)" 
           
    fi          
    
else 
    help;
    exit 3;
fi
