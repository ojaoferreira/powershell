$folder = Read-Host 'Directory'

$items = Get-ChildItem -Path $folder -Recurse  -Attributes ReadOnly

foreach ($item in $items) {
  $item.IsReadOnly = $false
}
