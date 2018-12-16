#!/bin/bash
trap '[ "$?" -eq 0 ] || read -p "Looks like something went wrong in step ´$STEP´... Press any key to continue..."' EXIT
#Quick Hack: used to convert e.g. "C:\Program Files\Docker Toolbox" to "/c/Program Files/Docker Toolbox"
win_to_unix_path(){  	wd="$(pwd)"; 	cd "$1"; 		the_path="$(pwd)"; 	cd "$wd"; 	echo $the_path; }
# This is needed  to ensure that binaries provided
# by Docker Toolbox over-ride binaries provided by
# Docker for Windows when launching using the Quickstart.
export PATH="$(win_to_unix_path "${DOCKER_TOOLBOX_INSTALL_PATH}"):$PATH"
VM=${DOCKER_MACHINE_NAME-default}
DOCKER_MACHINE="${DOCKER_TOOLBOX_INSTALL_PATH}\docker-machine.exe"
STEP="Looking for vboxmanage.exe"
if [ ! -z "$VBOX_MSI_INSTALL_PATH" ]; then   VBOXMANAGE="${VBOX_MSI_INSTALL_PATH}VBoxManage.exe"; else   VBOXMANAGE="${VBOX_INSTALL_PATH}VBoxManage.exe"; fi
BLUE='\033[1;34m'
GREEN='\033[0;32m'
NC='\033[0m'
#clear all_proxy if not socks address
if  [[ $ALL_PROXY != socks* ]]; then   unset ALL_PROXY; fi
if  [[ $all_proxy != socks* ]]; then   unset all_proxy; fi
if [ ! -f "${DOCKER_MACHINE}" ]; then   echo "Docker Machine is not installed. Please re-run the Toolbox Installer and try again.";   exit 1; fi
if [ ! -f "${VBOXMANAGE}" ]; then   echo "VirtualBox is not installed. Please re-run the Toolbox Installer and try again.";   exit 1; fi
"${VBOXMANAGE}" list vms | grep \""${VM}"\" &> /dev/null
VM_EXISTS_CODE=$?
set -e
STEP="Checking if machine $VM exists"
if [ $VM_EXISTS_CODE -eq 1 ]; then   "${DOCKER_MACHINE}" rm -f "${VM}" &> /dev/null || :;   rm -rf ~/.docker/machine/machines/"${VM}"   if [ "${HTTP_PROXY}" ]; then     PROXY_ENV="$PROXY_ENV --engine-env HTTP_PROXY=$HTTP_PROXY";   fi;   if [ "${HTTPS_PROXY}" ]; then     PROXY_ENV="$PROXY_ENV --engine-env HTTPS_PROXY=$HTTPS_PROXY";   fi;   if [ "${NO_PROXY}" ]; then     PROXY_ENV="$PROXY_ENV --engine-env NO_PROXY=$NO_PROXY";   fi;   "${DOCKER_MACHINE}" create -d virtualbox $PROXY_ENV "${VM}"; fi
STEP="Checking status on $VM"
VM_STATUS="$( set +e ; "${DOCKER_MACHINE}" status "${VM}" )"
if [ "${VM_STATUS}" != "Running" ]; then   "${DOCKER_MACHINE}" start "${VM}";   yes | "${DOCKER_MACHINE}" regenerate-certs "${VM}"; fi
#!/bin/bash
trap '[ "$?" -eq 0 ] || read -p "Looks like something went wrong in step ´$STEP´... Press any key to continue..."' EXIT
#Quick Hack: used to convert e.g. "C:\Program Files\Docker Toolbox" to "/c/Program Files/Docker Toolbox"
win_to_unix_path(){  	wd="$(pwd)"; 	cd "$1"; 		the_path="$(pwd)"; 	cd "$wd"; 	echo $the_path; }
# This is needed  to ensure that binaries provided
# by Docker Toolbox over-ride binaries provided by
# Docker for Windows when launching using the Quickstart.
export PATH="$(win_to_unix_path "${DOCKER_TOOLBOX_INSTALL_PATH}"):$PATH"
VM=${DOCKER_MACHINE_NAME-default}
DOCKER_MACHINE="${DOCKER_TOOLBOX_INSTALL_PATH}\docker-machine.exe"
STEP="Looking for vboxmanage.exe"
if [ ! -z "$VBOX_MSI_INSTALL_PATH" ]; then   VBOXMANAGE="${VBOX_MSI_INSTALL_PATH}VBoxManage.exe"; else   VBOXMANAGE="${VBOX_INSTALL_PATH}VBoxManage.exe"; fi
BLUE='\033[1;34m'
GREEN='\033[0;32m'
NC='\033[0m'
#clear all_proxy if not socks address
if  [[ $ALL_PROXY != socks* ]]; then   unset ALL_PROXY; fi
if  [[ $all_proxy != socks* ]]; then   unset all_proxy; fi
if [ ! -f "${DOCKER_MACHINE}" ]; then   echo "Docker Machine is not installed. Please re-run the Toolbox Installer and try again.";   exit 1; fi
if [ ! -f "${VBOXMANAGE}" ]; then   echo "VirtualBox is not installed. Please re-run the Toolbox Installer and try again.";   exit 1; fi
"${VBOXMANAGE}" list vms | grep \""${VM}"\" &> /dev/null
VM_EXISTS_CODE=$?
set -e
STEP="Checking if machine $VM exists"
if [ $VM_EXISTS_CODE -eq 1 ]; then   "${DOCKER_MACHINE}" rm -f "${VM}" &> /dev/null || :;   rm -rf ~/.docker/machine/machines/"${VM}"   if [ "${HTTP_PROXY}" ]; then     PROXY_ENV="$PROXY_ENV --engine-env HTTP_PROXY=$HTTP_PROXY";   fi;   if [ "${HTTPS_PROXY}" ]; then     PROXY_ENV="$PROXY_ENV --engine-env HTTPS_PROXY=$HTTPS_PROXY";   fi;   if [ "${NO_PROXY}" ]; then     PROXY_ENV="$PROXY_ENV --engine-env NO_PROXY=$NO_PROXY";   fi;   "${DOCKER_MACHINE}" create -d virtualbox $PROXY_ENV "${VM}"; fi
STEP="Checking status on $VM"
VM_STATUS="$( set +e ; "${DOCKER_MACHINE}" status "${VM}" )"
if [ "${VM_STATUS}" != "Running" ]; then   "${DOCKER_MACHINE}" start "${VM}";   yes | "${DOCKER_MACHINE}" regenerate-certs "${VM}"; fi
git clone # 1 - Import library
import pygame
from pygame.locals import *
# 2 - Initialize the game
pygame.init() width, height = 640, 480
screen=pygame.display.set_mode((width, height))
# 3 - Load images
player = pygame.image.load("resources/images/dude.png")
# 4 - keep looping through
while 1:     screen.fill(0)
    # 6 - draw the screen elements
    screen.blit(player, (100,100))
    # 7 - update the screen
    pygame.display.flip()     for event in pygame.event.get():
        # check if the event is the X button 
        if event.type==pygame.QUIT:             pygame.quit() 
pwd
git clone https://github.com/khagenrai/forgaming_Purpose.git
ls
cd forgaming_Purpose/
ls
cat README.md 
unzip jenkins-2.155.zip 
