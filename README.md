# nyxgeek-rules
Custom rules for John the Ripper

INSTALLATION & NOTES
------------------------------------
Copy nyxgeek.conf to your john/run folder. Add the following line to your john.conf file:
```
.include "$JOHN/nyxgeek.conf"
```
Be sure to use --encoding=utf8 or --encoding=iso-8859-2 etc to ensure that these work.

INDEX OF RULES
-------------------------------------
[List.Rules:MostPopularUTF]

[List.Rules:AddASCIIEverywhere]

[List.Rules:AddUTF8Everywhere]

[List.Rules:SwapCharactersExtended]

[List.Rules:PrependYears2000s]

[List.Rules:AppendYears2000s]

[List.Rules:Add2000sEverywhere]

[List.Rules:AddLinkedInEverywhere_FULL]

[List.Rules:AddLinkedInEverywhere_FAST]

[List.Rules:AddPasswordEverywhere]

[List.Rules:RemoveCharacterEverywhere]
