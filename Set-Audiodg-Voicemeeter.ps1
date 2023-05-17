$audiodg = Get-Process audiodg
$priority = $audiodg.PriorityClass
$affinity = $audiodg.ProcessorAffinity
$newPriority = $audiodg.PriorityClass='High'
$newAffinity = $audiodg.ProcessorAffinity=0x2

if (!($priority -match 'High')) {
    $newPriority
    $priority = $audiodg.PriorityClass

    if ($priority -match 'High') {
        Write-Host "Set PriorityClass to `'High`'"
    } else {
        Write-Host "Failed to set PriorityClass"
    }

} else {
    Write-Host "PriorityClass already set to `'High`'"
}

if (!($affinity -eq 0x2)) {
    $newAffinity
    $affinity = $audiodg.ProcessorAffinity

    if ($affinity -eq 0x2) {
        Write-Host "Set affinity to 0x2 `(Core 2`)"
    } else {
        Write-Host "Failed to set ProcessorAffinity"
    } 

} else {
    Write-Host "ProcessorAffinity already set to 0x2`(Core 2`)"
}

Get-process audiodg | Select-Object Name,PriorityClass,ProcessorAffinity | format-table
