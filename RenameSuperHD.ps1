﻿New-PSDrive -name "PublicDesk" -PSProvider FileSystem -Root "C:\Users\Public\desktop\"
Rename-Item -Path "C:\Users\Public\desktop\superhd.url" -NewName "C:\Users\Public\desktop\מרכז תמיכה.url"
Remove-PSDrive -name "PublicDesk"
