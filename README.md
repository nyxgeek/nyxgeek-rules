# nyxgeek-rules
Custom rules for John the Ripper

INSTALLATION & NOTES
------------------------------------
Copy nyxgeek.conf and all-utf8.conf to your john/run folder. I have separated the giant all-utf8.conf rule into its own rules file since it is nearly 4700 lines. 

Add the following lines to your john.conf file:
```
.include "$JOHN/nyxgeek.conf"
.include "$JOHN/all-utf8.conf"
```


Be sure to use --internal-encoding=UTF-8 to ensure that these work.

INDEX OF RULES
-------------------------------------
[List.Rules:MostPopularUTF]

[List.Rules:Add_ASCII_Everywhere]

[List.Rules:Add_ISO-8859-1_Everywhere]

[List.Rules:SwapCharactersExtended]

[List.Rules:PrependYears2000s]

[List.Rules:AppendYears2000s]

[List.Rules:Add2000sEverywhere]

[List.Rules:AddLinkedInEverywhere_FULL]

[List.Rules:AddLinkedInEverywhere_FAST]

[List.Rules:AddPasswordEverywhere]

[List.Rules:Add_CyrillicUTF8_Everywhere]

[List.Rules:Add_GreekUTF8_Everywhere]

[List.Rules:Add_ArabicUTF8_Everywhere]

[List.Rules:Add_ALL_UTF8_Everywhere]


