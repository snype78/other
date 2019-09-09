$cpuutil=(get-counter -Counter "\процессор(_total)\% загруженности процессора" -SampleInterval 1 -MaxSamples 5 |
    select -ExpandProperty countersamples | select -ExpandProperty cookedvalue | Measure-Object -Average).average

If ($cpuutil -ge 90)
{Restart-Service MyService1, "My Service2", MyService3}
Else
{Exit}
