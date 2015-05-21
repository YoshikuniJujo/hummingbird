import Data.List
import System.Environment

main :: IO ()
main = do
	fp : _ <- getArgs
	cnt <- readFile fp
	putStr $ take (length cnt - length cnt) "dummy"
	writeFile fp . unlines . sort $ lines cnt
