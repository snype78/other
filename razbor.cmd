wevtutil epl $logName "C:\temp\my$logName.evtx" "/q:*[System[TimeCreated[@SystemTime<=`'$newest`' and @SystemTime>=`'$oldest`']]]" /ow:true

wevtutil qe System  "/q:*[System[TimeCreated[@SystemTime>='2019-04-13T00:00:00' and @SystemTime<='2019-04-14T00:00:00']]]"

wevtutil epl c:\system_2019_04_13.evtx "/q:*[System[TimeCreated[@SystemTime>='2019-04-13T00:00:00' and @SystemTime<='2019-04-14T00:00:00']]]"

RunDll32 InetCpl.cpl,ClearMyTracksByProcess 4351

schtasks /Create /s <name_pc> /tn '1' /sc once /st 09:56 /ru system /tr "nircmd execmd RunDll32 InetCpl.cpl,ClearMyTracksByProcess 4351"
