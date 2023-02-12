﻿clear
Import-Module activedirectory

$userList = Read-Host 'Enter a comma-separated list of user names (for example apple,banana,tomato)'
$userArray = $userList.Split(',')
$branchNumber = Read-Host 'Enter branch number'
$groupName = "Branch_$branchNumber"
$groupDN = "LDAP://CN=$groupName,OU=Branch Groups,OU=Group Objects,OU=OUs,DC=posprod,DC=supersol,DC=co,DC=il"
$group = [ADSI]$groupDN

foreach ($user in $userArray) {
    $userDN = (Get-ADUser -Identity $user).DistinguishedName
    $group.Add("LDAP://$userDN")
}