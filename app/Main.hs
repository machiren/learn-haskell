module Main where

import Lib

-- 副作用はIOモナドを使って表現される
main :: IO ()
-- main関数はHaskell実行時に関数になる
main = someFunc

-- Haskellでの変数は不変(イミュータブル)
-- 変数の表し方は2通り

test1 :: Bool
test1 = True

test2 = "変数代入と同時に型宣言" :: String

-- Haskellでの型

-- 真偽値
bool :: Bool
bool = True

-- 文字型(単一文字)
-- Char型の場合はシングルクォートで囲む
char :: Char
char = 'R'

-- 文字列型(複数文字) Char型のリストと同義(シノニム)[Char]
-- String型の場合はダブルクォートで囲む
str :: String
str = "町田 連"

-- 固定長整数 bit数固定で表せる数字のみ
int :: Int
int = 1

-- 固定長整数 メモリが許す限りの整数？
integer :: Integer
integer = 1

-- 単精度浮動小数点数(32bits)
-- :TODO 調べる
float :: Float
float = 1

-- 倍精度浮動小数点数(64bits)
-- :TODO 調べる
double :: Double
double = 1

-- Intリスト
-- intList = [1..10] 左のように書くと 1 ~ 10 のリストを表現できる
intList :: [Int]
intList = [1, 2, 3]

second :: Int
second = intList !! 1

-- Charリスト String と等価 Char型のリストと同義(シノニム)[Char]
charList :: [Char]
charList = ['o']

-- タプル
-- 任意の型のリスト
tuple :: (Int, Char, Bool)
tuple = (1, 'a', True)

-- 要素数が 0個のタプルはユニット(unit)と呼ばれる
unit :: ()
unit = ()

-- (最初の要素を取り出す)
-- fstInt :: Int
-- fstInt = fst tuple

-- sndChar :: Char
-- sndChar = snd tuple
-- (_, _, x) = (1, 'a', "ABC") x に "ABC" がバインドされる

-- [1, 2, 3] 整数リスト([Int])
-- [1 .. 3] [1, 2, 3] と等価
-- [1, 3 ... 9] [1, 3, 5, 7, 9] と等価
-- [3, 2 .. 0] [3, 2, 1, 0] と等価
-- ['a', 'b', 'c'] 文字リスト([Char])。"ABC" と等価
-- ['a' .. 'c'] ['a', 'b', 'c'] と等価
-- ["Red", "Green", "Blue"] 文字列リスト([String])
-- [1, 2, 3] !! 2 3 (0から数えて2番目の要素を取り出す)
-- [1, 2] ++ [3, 4] リストを連結する
-- length [1, 2, 3] 3 (要素の数を返す)
-- head [1, 2, 3] 1 (先頭の要素を返す)
-- last [1, 2, 3] 3 (最後の要素を返す)
-- tail [1, 2, 3] [2, 3] (先頭を除いた要素を返す)
-- init [1, 2, 3] [1, 2] (末尾を除いた要素を返す)
-- take 2 [1, 2, 3] [1, 2] (先頭から2個の要素を返す)
-- takeWhile (< 3) [1, 2, 3] [1, 2] (条件に合致する要素を返す)
-- drop 2 [1, 2, 3] [3] (先頭から2個除いた要素を返す)
-- dropWhile (< 3) [1, 2, 3] [3] (条件に合致しない要素を返す)
-- reverse [1, 2, 3] [3, 2, 1] (リストを逆方向にする)
-- map (* 2) [1, 2, 3] [2, 4, 6] (リストに対して関数を適用する)
