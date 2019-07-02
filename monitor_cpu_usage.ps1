(get-counter -Counter "\Processor(_Total)\% Processor Time"
-SampleInterval 1 -MaxSamples 10 |
    select -ExpandProperty countersamples | select -ExpandProperty
cookedvalue | Measure-Object -Average).average
