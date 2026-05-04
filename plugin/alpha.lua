return {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.dashboard'

        local logo = [[
                                             
      ████ ██████           █████      ██
     ███████████             █████ 
     █████████ ███████████████████ ███   ███████████
    █████████  ███    █████████████ █████ ██████████████
   █████████ ██████████ █████████ █████ █████ ████ █████
 ███████████ ███    ███ █████████ █████ █████ ████ █████
██████  █████████████████████ ████ █████ █████ ████ ██████    
        ]]
        
        local minerik = [[
███╗   ███╗██╗███╗   ██╗███████╗██████╗ ██╗██╗  ██╗
████╗ ████║██║████╗  ██║██╔════╝██╔══██╗██║██║ ██╔╝
██╔████╔██║██║██╔██╗ ██║█████╗  ██████╔╝██║█████╔╝ 
██║╚██╔╝██║██║██║╚██╗██║██╔══╝  ██╔══██╗██║██╔═██╗ 
██║ ╚═╝ ██║██║██║ ╚████║███████╗██║  ██║██║██║  ██╗
╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝
        ]]

        local logo2 = [[
 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
         ░    ░  ░    ░ ░        ░   ░         ░   
         ]]
        local flowey = [[
█████████████▀▀▀▀▀███████▀▀▀▀▀█████████████
█████████▀░░▀▀█▄▄▄▄▄▄██▄▄▄▄▄▄█▀░░▀█████████
████████▄░░▄▄████▀▀▀▀▀▀▀▀▀████▄▄░░▄████████
████▀▀▀▀█████▀░░░░░░░░░░░░░░░▀█████▀▀▀▀████
██▀░░░░░░██▀░░░░░░██░░░██░░░░░░▀██░░░░░░▀██
█░░░▀▀▀▀███░░░░░░░██░░░██░░░░░░░███▀▀▀▀░░░█
█▄▄░░░░░░██░░░░▄░░▀▀░░░▀▀░░▄░░░░██░░░░░░▄▄█
████▄░░░░▀██░░░░███████████░░░░██▀░░░░▄████
██████████▀██▄░░░▀███████▀░░░▄██▀██████████
███████▀░░░████▄▄░░░░░░░░░▄▄████░░░▀███████
██████░░░▄▀░░▀▀▀███████████▀▀▀░░▀▄░░░██████
██████░░░▀░░░░░░░░▄▄▄█▄▄▄░░░░░░░░▀░░░██████
████████▄▄▄▄▄▄███████████████▄▄▄▄▄▄████████
██████████████████▀░░▀█████████████████████
█████████████████▀░░░▄█████████████████████
█████████████████░░░███████████████████████
██████████████████░░░▀█████████████████████
███████████████████▄░░░████████████████████
█████████████████████░░░███████████████████ 
        ]]

        local papyrus2 = [[
                                  ...........................`                                  
                                 `mNNNNNNNNNNNNNNNNNNNNNNNNNN-                                  
                               ohdMMMMMMMMMMMMMMMMMMMMMMMMMMMdhy                                
                            .//dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN//-                             
                          ``+MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy``                           
                         .mmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmm/                          
                       osyMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMhss`                       
                    .-:mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM/--                     
                    oNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNh`                    
                    sMMMMMMMh-------+MMMMMMMMMMMMMMMN/-------dMMMMMMMMMMMMd`                    
                    sMMMMNsso+++++++ossdMMMMMMMMMMhss++++++++ssyMMMMMMMMMMd`                    
                    sMMmmh-.+mmmmmMMd..ommMMMMMNmm+.-mMMmmmmm:.-mmNMMMMMMMd`                    
                    sMM:.-mmy....-mMMmm+..dMMMMy..ymNMMd.....hmd..+MMMMMMMd`                    
                    sMM- .NMy    `mMMMM+ `dMMMMy  yMMMMd    `dMN  /MMMMMMMd`                    
                    sMM- .NMh::::/NMMMM+ `dMMMMy  yMMMMm:::::mMN  /MMMMMMMd`                    
                    sMM:`-mNNMMMMMMMMNN+``dMMMMy``yNNMMMMMMMMNNm``/NNMMMMMd`                    
                    sMMmdh--oMMMMMMMd--oddNMMMMNdd+-:NMMMMMMM/-:dds--hMMMMd`                    
                    sMMMMNooooooooooooodMMMMMMMMMMyoooooooooooosMMy  :ooNMd`                    
                    ommMMMMMh......./MMMMMNmmMMMMMMMN:.......dMMMMy  `..NMd`                    
                     ``dMMMMMMMMMMMMMMMMMN- .NMMMMMMMMMMMMMMMMMMMMy  sMMMMd`                    
                    /hh/::::sMMMMMMMMMMy::` .NMMMMMMMMMMMMMMMMMMMMy  yMM/:-                     
                    sMM- `//sMMMMMMMMMM+    `yydMMMMMMMMMMMMMMMMyys//syy`                       
                    oMN- -NMMMMMMMMMMMM+       /MMMMMMMMMMMMMMMN  /MM/                          
                    ```dNd.`+MMMMMMMMMM+  hNd` /MMMMMMMMMMMMMMMN  /MM/                          
                       dMm` /MMMMMMMMMMdssNMNsshMMMMMMMMMMMMMs++  /MM/                          
                       ydy` /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-    /MM/                          
                            /MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM-    /MM/                          
                            `--dMMMMMMMMMMMMMMMMMMMMMMMMMMy--`    /MM/                          
                               +sssssssssssssssssssssssssso++`    /MM/                          
                               `....`  `.....  `.....  `..sMN-    /MM/                          
                               yNNNNy  oNNNNd` :NNNNm. -NNNMM-    /MM/                          
                               hMMMMh  oMMMMm` /MMMMN. -MMMMM-    /MM/            `syyyyyyyyyyyy
    -:::::::`  ::-             ohhMMh  oMMMMm` /MMMMN. -MMmhh.    /MM/       .::::/hhdMMMMMMMNhh
  ``mMMMMMMM/`.mNy               .mNh  oNNNNd` /NNNNm. -NNo       /MM/  `````oNNNNd.`+MMMNNNNd` 
 +ddMMMMMMMMmdd--.                .-.  `----.  `-----  `--`       /MM/  hddddo----:ddmMMo----.  
 sMMMMMMMMMMMMN`                                                  /MM/  ooooo:  /osNMmoo-  +oooo
 sMMMMMMMMMMMMN`                                                ..oMM/       `..dMMmms    `hmmmm
 oMMMMMMMMMMMMN`                                               `NNNMM/       +NNMMm.``     `````
 -//NMMMMMMMMMN`                 `syo  /yy. `yy+  +yy` .yy/  oyhMMd//.    .yymMMo/:     +yyyyyyy
    mMMMMMMMMMN/:-               `yho  oMM- .NMy  yMN. .hho:/mMMMMy     ::+MMMMM-    .::hMMMMMMM
    mMMMMMMMMMMMMh```          ``````  oNm- .mNs  sNm.  ``sMMMMMNNs  ```NMMMMNNN-  ``+MMMMMMMMMM
    mMMMMMMMMMMMMNmm/          smmmmy  `..`  ...  ...  -mmNMMMMN..`  ommMMMMMy..` .dmNMMMMMMMMMM
    ++sMMMMMMMMMMMMMhso.       hMMMMmssssssssssssssssssyMMMMMs++     yMMMMmo+:  +ssMMMMMMMMMMMMM
      -NMMMMMMMMMMMMMMM/..     smmmmmmmmmmmmmmmmmmmmmmmmmmmmd-    `..yMMMMd`    dMMMMMMMMMMMMMMM
      -NMMMMMMMMMMMMMMMMMm`                                       /MMMMMMMd`    dMMMMMMMMMMMMMMM
        ]]

        local papyrus = [[
                           +NMMMMMMMMMN+                                        
                        `/NMMMMMMMMMMMMMN+`                                     
                      `/d+ohMMMMMMMMMMMMMMm+`                                   
                      :MMMM`:hNMMMMMMMMMMMMM:                                   
                      :MMMM  osmMMdoo/+oooNM/                                   
                      :MMMM  dNMMMMNh `NNNMM/                                   
                      :MMMs  dMMMMMm+ `sMyNM/                                   
                      .oyymmmMd:yMMNmmmmy/+y-                                   
                      -y:sMMMM:.-sMMMMMM N/`                                    
                       -y`MMMMdmdmMMMMN: N.                                     
                        ` +mmmmmmmmmmdo  N.                                     
                           ss-+s:/s+-yd  N.    ```````                          
                :++---     sN-hN+oNy-Ns  N. `-/+ymdd+o```                       
               hNMMNo.      .`.-``-.`.   N./o//yds:o:dddd+:.                    
               yNMMMs       -`.`..`.`- -hd. .sds.`:ooooo:yddo.        .--.      
                dMMMmo.    .+`s:++/s.oyMm`.smm+`/hMMMMMMh/`-ymys.-yyyo///+/.    
       `.-ss+   /mMMMMm+.  ddoo+oo+oodm+`.dMy-/hNMMMMMMMMN+`-yMMNdm++.   `+s    
     `:ymNMN. +. /dNMMMMm+`-..........-`+mMy.:hMMMMMMMMMMMN+ -sso..      -:`    
     oNMMMNs `Nm+..+dMMMMMmm+/.``-///+mmMNh+.sMMMMMMMMMMMMM+                    
    oNMMMMd  dMMMm+..+dMMMMMMMmddmMMMMNddohN/+mMMMMMMMMMMMM+                    
    yMMMMMd  MMMMMMm+`:MN/MMMMMMMMNmhoohhMMM+`+NMMMMMMMMMMs.                    
    sNMMMMd  /MMMMMMMy-oNy/modNNy+syhMMMMMMMMo`.sNMMMMMNNo.                     
     sMMMMNo  +NMMMMMMmosm`oNyssshdooosMMMMMMMh: .osssss.                       
     `/dNMMN+  oNMMMMMMMmoo.NMMNNMNh+omMMMMMMMo` `odooos.                       
     :yy//yyy   omMMMMMMMMmmMMMMMMdosNsMMMMMd/`  .osmmo`                        
    .sy///       .-omMMMMMMMMMMMMMdoyMMMMdd/`    :MMMM`                         
  .sNMNo            ./ommmmmmmmmmmmmmd///        :MMMm`                         
 `mMMM+                    ``````                :MMM                           
 +Nyoooooooooooooooooo/    MMMMMMd:              :MMM                           
  `+ssdMMMMMMMMyssss/-++/  ````+s/               :MMM                           
      `........     +NMMMd  :do.                 -hMM                           
                    .--/dh  mMMm/                 -N-                           
         `.  ...   `./ys.   mMMM+                -hh                            
         :mo.mmmyssdNMMMh ` dNNN/                :d``                           
         .yNmss.+smMMMm+.oNo.````                :d`N                           
           `.yMNNNNMMy``+yyymNNNs//////          :d.M                           
              ..shhh+``/hmmmoooyhhhdMMN          :d.M                    .-     
                     :dd.dMMMMMmdddyoo-          :m:h                ---oms     
                     /MNs`/dmMMMMNmho+           -h:-yy`  `.....-yyyymNNMNo     
                     /MMm  ``/+++::hNd`          `:sNmo``+dNNNNNNMMMMMMNy:`     
                     /MNo         -hMMd          -mNM.`/dNMMMMMMMMNNNys:`       
                    .sMd           :MMN/         `.-y dMMMMMMMNyyy...           
                    +MMd           `+MMM:             hhNMMMMMNy:::             
                   /mMd- ---        `+MMM:              -:yddddddd:             
                   +NMh `///+s.      `+mMm. ::`            ```````              
             +.`````:o/  ```sN:        `o. `+do`                                
             .dmmms+////+mmmMy.    .:    `/hNMNo`                               
              -mMMmho-/osMMMM-   .oy- `::dNd/omNo                               
               -yNmhhysdddMMM-   .odhhdMMd/`.odmNo                              
                 yNh+/..-yMMM-     .oNMMMhysds-oMd`                             
                  sNMMMNNNMMM:       `+NMMMy-/dMMMh                             
                  `:hm+...sMMN:        `oNMMNMMMd+-ooooooooo:`                  
            ``//////yNmmmmmMMMs.         .mMMMMy-oNMMMMMMMMMNh:                 
          `/ddMMMMMMMMMMMMMMMMM/          mMMMMNmMMMMMMMMMMMMMd-                
         -dMMMMMMMMMMMMMMMMMMMM/          yNMMMMMMMMMMMMMMMMMMMd                
         -NMMMMMMMMMMMMMMNN////.           hNNNNNNMMMMMMMMMMMMMh                
          `+++++++++++++/                        .++++++++++++:
        ]]
        local italian = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⡿⠿⢿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠋⠀⠀⠀⠀⠈⠙⠿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣿⡿⠿⣿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⠟⠋⠀⠀⠀⠀⠙⢿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣤⡀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣤⣤⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠟⠁⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⠿⠿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠿⠋⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⣀⣤⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⢾⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢀⣼⣿⣿⠏⠁⠀⠈⠁⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠉⠁⠀⠈⢻⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⣸⣿⣿⣿⠀⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢿⣿⣿⣿⣦⣀⣀⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⣠⣤⣾⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠉⠙⠛⠻⠿⠿⠿⠿⠿⠟⠛⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⠛⠛⠛⠛⠿⠿⠿⠛⠛⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠿⢿⣏⠙⢿⣦⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣶⣶⣿⣇⡁⠈⢿⣧⡀⠹⣿⣦⡀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠃⢰⣿⡿⢿⣆⠀⠙⣿⣦⡈⠙⢿⣦⡀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠃⠀⣿⡏⠁⠘⣿⣆⠀⠈⠻⣷⣄⠀⠙⢿⣦⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠇⠀⠀⢸⣧⠀⠀⠘⢿⣆⠀⠀⠈⠻⣷⡄⠀⢻⣷
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⠋⠀⠀⠀⢸⣿⡆⠀⠀⠈⢿⣧⠀⠀⠀⢹⣷⠀⠈⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠁⠀⠀⠀⢀⣿⡟⣿⣆⠀⠀⠀⢻⣧⠀⠀⠀⣿⡆⢠⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡟⠁⠀⠀⠀⠀⢠⣾⠟⠁⠘⣿⡄⠀⠀⠈⣿⣇⠀⠀⢹⣇⢸⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡿⠋⠀⠀⠀⠀⠀⣠⣿⣏⣠⣤⣤⣿⡇⠀⠀⠀⠸⣿⠀⠀⠘⣿⢸⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡟⠁⠀⠀⠀⠠⡶⠟⠛⠛⠋⠉⠉⠉⢹⣿⠀⠀⠀⠀⣿⡇⠀⠀⢿⢸⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣈⣿⡀⠀⠀⠀⠸⠧⠀⠀⠀⣿⡟
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⡿⠿⠛⠛⠉⢻⣇⠀⠀⠀⠀⠀⠀⠀⢠⣿⠁
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⠁⠀⠀⠀⠀⠀⢀⣴⡾⠟⠉⠀⠀⠀⠀⠀⠀⠀⠛⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀⠀⠀⠀⣠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠁⠀⠀⠀⠀⣰⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡟⠁⠀⠀⠀⠀⠀⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⠟⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣶⡿⠛⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣾⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⡾⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⡿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ]]

        dashboard.section.header.val = vim.split(logo2, '\n')
        dashboard.section.header.opts.hl = "Directory"
        dashboard.section.buttons.val = {
            dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
            dashboard.button('e', '󰷏  File browser', ':Telescope file_browser <CR>'),
            dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
            dashboard.button('t', '  Find text', ':Telescope live_grep <CR>'),
            dashboard.button('r', '󰄉  Recent files', ':Telescope oldfiles <CR>'),
            dashboard.button('u', '󱐥  Update', '<cmd>Lazy update<CR>'),
            dashboard.button('c', '  Config', ':cd $HOME/.config/nvim | silent Telescope find_files <CR>'),
            dashboard.button('q', '󰿅  Quit', '<cmd>qa<CR>'),
        }
        local handle = io.popen("fortune -c | sed '2d'")
        local result = handle:read("*a")
        handle:close()
        dashboard.section.footer.val = result

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end,
}
