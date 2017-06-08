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


**NOTE:** Depending on what version of John you're using, you may need to specify either "--internal-encoding" or "internal-codepage" parameters, or edit the john.conf file to set the DefaultInternalEncoding.  If these rules aren't working correctly for you try "--internal-encoding=UTF-8" or "--internal-codepage=latin1".



INDEX OF RULES
-------------------------------------
**LongDoubleAddNum** - Does duplicate of base word and appends numbers/specials (fred -> FredFred03)

**MakeItBigger_Append** - Adds 4-8 of a single digit or symbol to the end of base word (fred -> Fred1111)

**MostPopularUTF** - inserts most popular UTF chars at every char position

**Add_ASCII_Everywhere** - inserts all ASCII chars at every char position

**Add_ISO-8859-1_Everywhere** - inserts all extended chars at every char position

**SwapCharactersExtended** - replaces many ASCII chars with extended versions. ie, o with ø (requires latin1 codepage)

**PrependYears2000s** - prepends words with 2000-2019

**AppendYears2000s** - appends words with 2000-2019

**Add2000sEverywhere** - inserts 2000-2019 at all char positions

**OverWriteAllPositionsASCII** - overwrites every char position with all ASCII chars

**AddLinkedInEverywhere_FULL** - inserts permutations of 'linkedin' everywhere (made for linkedin dump)

**AddLinkedInEverywhere_FAST** - slightly smaller version of the above

**AddLinkedInEverywhere_BASIC** - fastest, most basic ASCII-only version of the above

**AddPasswordEverywhere** - inserts permutations of 'password' everywhere

**Add_Password_Everywhere_ALL_LANGUAGES** - inserts 'password' in over 90 languages everywhere

**Add_CyrillicUTF8_Everywhere** - inserts Cyrillic chars at every char position

**Add_GreekUTF8_Everywhere** - inserts Greek chars at every char position

**Add_ArabicUTF8_Everywhere** - inserts Arabic chars at every char position

**Add_ALL_UTF8_Everywhere** - inserts a lot of UTF chars at every char position


