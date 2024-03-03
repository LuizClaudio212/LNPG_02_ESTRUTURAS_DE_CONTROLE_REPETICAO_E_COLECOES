import Text.Printf

gamePrice :: Double
gamePrice = 19.9

main :: IO ()
main = do
    putStrLn "Quantos jogos foram vendidos esse mês: "
    quantidadeVendida <- readLn :: IO Integer
    let faturamentoPessoal = fromIntegral quantidadeVendida * gamePrice
        salario = faturamentoPessoal * 0.5
        (bonus, quantidadeRestante) = calcularBonus 0 quantidadeVendida
        salarioComBonus = salario + bonus
    printf "O valor arrecadado em vendas foi de: %.2f\n" faturamentoPessoal
    printf "O valor ganho como bonus: %.2f\n" bonus
    printf "O valor que recebera no mes é de: %.2f" salarioComBonus

calcularBonus :: Double -> Integer -> (Double, Integer)
calcularBonus acc 0 = (acc, 0)
calcularBonus acc qtdVendida
    | qtdVendida >= 15 = calcularBonus (acc + (fromIntegral (min 15 qtdVendida) * gamePrice * 0.08)) (qtdVendida - 15)
    | otherwise = (acc, qtdVendida)
