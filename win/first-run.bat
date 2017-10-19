rem this script MUST be run before launching hushd for the first time
mkdir %AppData%\Hush
mkdir %LocalAppData%\HushSwingWalletUI

@echo off

IF NOT EXIST %AppData%\Hush\hush.conf (
   (
    echo addnode=explorer.myhush.org
    echo addnode=node.myhush.network
    echo rpcuser=username 
    echo rpcpassword=password%random%%random%
    echo daemon=1 
    echo showmetrics=0 
    echo gen=0 
    ) > %AppData%\Hush\hush.conf
) 

IF NOT EXIST %LocalAppData%\HushSwingWalletUI\addressBook.csv (
   (
    echo t1dSqorCh1PdyvViTRHzKdAFjnR81VyGv1u,HUSH Dev Fund
    ) > %LocalAppData%\HushSwingWalletUI\addressBook.csv
)
