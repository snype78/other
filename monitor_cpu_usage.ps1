(get-counter -Counter "\процессор(_total)\% загруженности процессора" -SampleInterval 1 -MaxSamples 10 |
 select -ExpandProperty countersamples | select -ExpandProperty cookedvalue | Measure-Object -Average).average
