import Text.Printf
bottles multStr = " bottle" ++ multStr ++ " of beer"
wall = "on the wall"
and' = " and "
loop :: Int -> IO ()
numBottles n multStr = do
    printf "%d%s %s, %d%s.\n" n (bottles multStr) wall n (bottles multStr)
oneDown n = do
    printf "Take one down%spass it around, %d%s %s.\n\n" and' n (bottles (if n > 1 then "s" else "")) wall
loop 1 = do
    printf "1%s %s, 1%s.\nGo to the store%sbuy some more, 99%s %s.\n" (bottles "" ) wall (bottles "") and' (bottles "s") wall
loop n = do
    numBottles n "s"
    oneDown (n - 1)
    loop (n - 1)
main = loop 99
