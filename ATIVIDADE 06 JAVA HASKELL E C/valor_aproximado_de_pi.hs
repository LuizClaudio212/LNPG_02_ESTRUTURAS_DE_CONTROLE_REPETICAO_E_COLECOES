module Main where

calcularPi :: Int -> Double
calcularPi n =
    let resultadoSerie = sum [termo i | i <- [0..n-1]]
        termo i = (-1) ** fromIntegral i * (1.0 / (2 * fromIntegral i + 1) ** 3)
        piAproximado = (resultadoSerie * 32) ** (1.0 / 3)
    in piAproximado

main :: IO ()
main = do
    putStr "Digite a quantidade de termos para calcular pi: "
    n <- readLn
    print $ calcularPi n