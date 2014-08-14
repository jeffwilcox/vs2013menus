$packageName = 'vs2013classicmenucasing'

try {
    Set-ItemProperty -Path HKCU:\Software\Microsoft\VisualStudio\12.0\General -Name SuppressUppercaseConversion -Type DWord -Value 0 
    Write-ChocolateySuccess "$packageName"
} catch {
    Write-ChocolateyFailure '__NAME__' $($_.Exception.Message)
    throw;
}

