# CLEVERBRUTE METHOD

## combinator attack + custom wordlists

The CLEVERBRUTE method is simply a combinator attack with two specially-prepared wordlists. The idea is to cover likely-used keyspace, by pulling out human-generated patterns from other wordlists.  To do this, the first 1-4,1-5,and 1-6 characters of a wordlist are concatenated and sorted intoa  HEAD.out file.  The tail 1-4,1-5, and 1-6 chars of the wordlist are also compiled into a file, TAIL.out.

To generate the specialized wordlists, feed the 'cleverbrute_create.sh' script a wordlist.


```
example:

./cleverbrute_create.sh wordlist.txt

Making HEAD file...	file written to /path/to/dir/HEAD.out  -  Total lines: 21
Making TAIL file...	file written to /path/to/dir/TAIL.out  -  Total lines: 24


Example (first 5 lines):

HEAD.out			    TAIL.out
--------			    --------
1234				    !!!!
12345				    !!!!n
123456				    !!!!ni
Spri				    !710
Sprin				    !7102
```


Now use these wordlists like this:

```
./hashcat64.bin -m 1000 -a 1 /path/to/hashfile.hash /path/to/dir/HEAD.out /path/to/TAIL.out
```

You can add options like, capitalizing using the -j and -k options. See the Hashcat wiki for more information:<br>
https://hashcat.net/wiki/doku.php?id=combinator_attack

