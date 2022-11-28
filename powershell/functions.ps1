Function Add {
    param ([Int32]$val1, [Int32]$val2)
    return ($val1 + $val2)
    
}
Function Multiply($val1, $val2){
    return ($val1 * $val2)
    
}

$data = Add 1 2
Write-Host $data
$data = Multiply 2 2 
Write-Host $data