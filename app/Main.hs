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

-- Charリスト String と等価 Char型のリストと同義(シノニム)[Char]
charList :: [Char]
charList = ['o']

-- タプル
-- :TODO 調べる
-- taple :: (Int, Char)
