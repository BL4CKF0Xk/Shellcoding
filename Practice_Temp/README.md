This is a command line to get shellcode from a object file or binary file

```bash
objdump -d ./BINARY|grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
```

```bash
for i in $(objdump -d BINARY|grep "^ " |cut -f2); do echo -n '\x'$i;done; echo
```
