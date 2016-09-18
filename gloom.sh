#! /bin/bash

set -eu

INC=0
HOME=$HOME
INSTALL="ffmpeg"


function gloom {
    ${INSTALL} -f pulse -i 0 -f x11grab -r 30 -s 2560x1440 -i :0.0 -vcodec h264_nvenc -preset default -gpu 0 -bit_rate 5000 -profile:v main -acodec aac -pix_fmt nv12 /tmp/out.mp4 &&

    FILE="${HOME}/Videos/gloom-${INC}.mp4"

    ffmpeg -sseof -00:03:00 -i /tmp/out.mp4 -vcodec copy -acodec copy "$FILE" -loglevel quiet &&

    echo -e "\nSaved file ${FILE} successfully!\n"
}

function clean {
    rm /tmp/out.mp4 &&
    let "INC++"
#   echo -e "Couldn't clean /tmp/out.mp4\n"
}

function leave {
    read -n1 -p "Keep recording? (y/n)" close

    case $close in
        y|Y) echo -e "Sure thing!\n" ;;
        n|N) exit ;;
        *) echo -e "Sure thing!\n" ;;
    esac
}

while true; do
    gloom
    clean
    leave
done
