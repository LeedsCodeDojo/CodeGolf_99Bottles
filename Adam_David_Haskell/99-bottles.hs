import Text.Printf;b s=" bottle"++s++" of beer";w="on the wall";a=" and ";t::Int->IO();p l=printf l
f n s=do p u n(b s)w n(b s)where u="%d%s %s, %d%s.\n"
s n=do p e a n(b(if n>1then"s"else""))w where e="Take one down%spass it around, %d%s %s.\n\n"
t 1=do p "1%s %s, 1%s.\nGo to the store%sbuy some more, 99%s %s.\n"(b"")w(b"")a(b"s")w
t n=do f n"s";s(n-1);t(n-1)
main=t 99