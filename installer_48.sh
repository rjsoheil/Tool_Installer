#!/bin/bash
echo -e "\e[1;43m---------------------Tool Installer---------------------\e[0m"
# sleep 2

echo -e "\t \e[1;31m Before any choice! You should install Golang. \n\t   Install Prerequisites(Y)\n\t   Install Tools(N)\e[0m"
read ready

if [ $ready = "Y" ];
then
    sudo apt -y update
    sudo apt -y upgrade
    # sudo apt-get install golang-go && echo "export PATH=$PATH:/usr/lib/go-1.20/bin" >> ~/.bashrc
    # sudo g install github.com/tomnomnom/waybackurls@latest && echo "export PATH=$PATH:/root/go/bin" >> ~/.bashrc
    sudo apt install -y libcurl4-openssl-dev
    sudo apt install -y libpcap-dev libatk1.0-0 libxcomposite-dev libxrandr2 libxkbcommon-x11-0 python3-pip vim curl zsh git net-tools tmux build-essential make python3-apt python3-distutils libssl-dev curl zsh git vim jq php
    echo -e "\t \e[1;42m Install! \e[0m"
elif [ $ready = "N" ];
then 
    echo -e "\t \e[1;43m Please select your choice \e[0m"
    echo -e "\e[1;43m\n\t[1].Project discovery tools & Common go tools ""\t[2].Download other tools from github\e[0m"
    read -p ">" choice
    if [ $choice == 1 ];
    then
    go_install(){
        go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
            pdtm -i alterx,asnmap,dnsx,httpx,interactsh-client,interactsh-server,katana,mapcidr,naabu,nuclei,notify,pdtm,shuffledns,subfinder,tlsx,uncover 
            echo -e "\t \e[1;42m project discovery's tools installed! \e[0m"

        go install github.com/ImAyrix/cut-cdn@latest
            echo -e "\t \e[1;42m cut-cdn installed! \e[0m"

        go install github.com/ffuf/ffuf/v2@latest
            echo -e "\t \e[1;42m ffuf installed! \e[0m"

        go install -v github.com/hueristiq/xsubfind3r/cmd/xsubfind3r@latest
            echo -e "\t \e[1;42m xsubfind3r installed! \e[0m"

        go install github.com/tomnomnom/unfurl@latest
            echo -e "\t \e[1;42m unfurl installed! \e[0m"

        go install github.com/lc/gau/v2/cmd/gau@latest
            echo -e "\t \e[1;42m gau installed! \e[0m"

        go install github.com/tomnomnom/anew@latest
            echo -e "\t \e[1;42m anew installed! \e[0m"

				sudo curl -sSfL "https://git.io/kitabisa-ssb" | sh -s -- -b /usr/local/bin
						echo -e "\t \e[1;42m ssb installed! \e[0m"

        go install github.com/owasp-amass/amass/v3/...@master
            echo -e "\t \e[1;42m amass installed! \e[0m"

        go install github.com/edoardottt/csprecon/cmd/csprecon@latest
            echo -e "\t \e[1;42m csprecon installed! \e[0m"

		go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
				echo -e "\t \e[1;42m chaos installed! \e[0m"
        
        go install github.com/tomnomnom/waybackurls@latest
            echo -e "\t \e[1;42m waybackurls installed! \e[0m"

        go install github.com/jaeles-project/gospider@latest
            echo -e "\t \e[1;42m gospider installed! \e[0m"

        go install -v github.com/tomnomnom/assetfinder@latest
            echo -e "\t \e[1;42m assetfinder installed! \e[0m"

        go install -v github.com/tomnomnom/gf@latest
            echo -e "\t \e[1;42m gf installed! \e[0m"

        go install -v github.com/tomnomnom/meg@latest
            echo -e "\t \e[1;42m meg installed! \e[0m"

        go install github.com/vodafon/waybackrobots@latest
            echo -e "\t \e[1;42m waybackrobots installed! \e[0m"

        go install github.com/Alikhalkhali/active-ip@latest
            echo -e "\t \e[1;42m active-ip installed! \e[0m"

        go install -v github.com/musana/fuzzuli@latest
            echo -e "\t \e[1;42m fuzzuli installed! \e[0m"

        go install github.com/sw33tLie/sns@latest
            echo -e "\t \e[1;42m sns installed! \e[0m"

        go install github.com/assetnote/surf/cmd/surf@latest
            echo -e "\t \e[1;42m surf installed! \e[0m"

        go install github.com/hakluke/hakip2host@latest
            echo -e "\t \e[1;42m hakip2host installed! \e[0m"

        go install github.com/tomnomnom/meg@latest
            echo -e "\t \e[1;42m meg installed! \e[0m"

        go install github.com/BishopFox/jsluice/cmd/jsluice@latest
            echo -e "\t \e[1;42m jsluice installed! \e[0m"

        go install github.com/denandz/sourcemapper@latest
            echo -e "\t \e[1;42m sourcemapper installed! \e[0m"
    }    
    go_install
    
    elif [ $choice = 2 ];
    then
        git_downlaod(){
        echo -e "\t \e[1;31m Please enter the name of tools directory \e[0m"
        while true
        do
        read -p ">" name
        exists=$(ls | grep $name)
        if [ $name = $exists ];
            then
            echo -e  "\e[1;31m Try again! (\e[1;41m $name \e[0m \e[1;31m is exists!)\e[0m"
        else
            mkdir "$name"
            echo -e "\t \e[1;42m directory was created! \e[0m"
            break
        fi
        done
        echo -e "\t \e[1;42m Strating downloads! \e[0m"
						git clone https://github.com/mrmeeseeks01/Paramx.git $name/paramx;                        echo "-----------------------"
            git clone https://github.com/Sh1Yo/x8.git $name/x8;                                       echo "-----------------------"
            git clone https://github.com/tarunkant/Gopherus.git $name/gopherus;                       echo "-----------------------"
            git clone https://github.com/assetnote/kiterunner.git $name/kiterunner;                   echo "-----------------------"
            git clone https://github.com/projectdiscovery/naabu.git $name/naabu;                      echo "-----------------------"
            git clone https://github.com/trufflesecurity/trufflehog.git $name/trufflehog;             echo "-----------------------"
            git clone https://github.com/rezasp/joomscan.git $name/joomscan;                          echo "-----------------------"
            git clone https://github.com/Emoe/kxss.git $name/kxss;                                    echo "-----------------------"
            git clone https://github.com/s0md3v/uro.git $name/uro;                                    echo "-----------------------"
            git clone https://github.com/irsdl/IIS-ShortName-Scanner.git $name/IIS-ShortName-Scanner; echo "-----------------------"
            git clone https://github.com/GerbenJavado/LinkFinder.git $name/LinkFinder;                echo "-----------------------"
            git clone https://github.com/dwisiswant0/apkleaks.git $name/apkleaks;                     echo "-----------------------"
            git clone https://github.com/r0oth3x49/ghauri.git $name/ghauri;                           echo "-----------------------"
            git clone https://github.com/Alikhalkhali/programs-watcher.git $name/programs-watcher;    echo "-----------------------"
            git clone https://github.com/St74nger/fback.git $name/fback;                              echo "-----------------------"
            git clone https://github.com/Q0120S/BackupKiller.git $name/backupKiller;                  echo "-----------------------"
            git clone https://github.com/tomnomnom/assetfinder.git $name/assetfinder;                 echo "-----------------------"
            git clone https://github.com/maverick0o0/RoboFinder.git $name/robofinder;                 echo "-----------------------"
            git clone https://github.com/0xGwyn/x9.git $name/x9 ;                                     echo "-----------------------"
						git clone https://github.com/maverick0o0/ip-range-to-cidr.git $name/ip-range-to-cidr;     echo "-----------------------"
						git clone https://github.com/Q0120S/FLinks.git $name/flinks;                              echo "-----------------------"
						git clone https://github.com/eslam3kl/crtfinder.git $name/crtfinder;                      echo "-----------------------"
						git clone https://github.com/devanshbatham/paramspider $name/paramspider;                 echo "-----------------------"
						git clone https://github.com/taythebot/cdn-ranges $name/cdn-ranges;
        echo -e "\t \e[1;42m Downloads are finished! \e[0m"
        }
        git_downlaod
    fi

fi