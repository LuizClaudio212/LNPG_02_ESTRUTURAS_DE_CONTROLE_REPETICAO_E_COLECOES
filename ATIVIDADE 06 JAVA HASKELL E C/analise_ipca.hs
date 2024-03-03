import Text.Printf

main :: IO ()
main = do
    ipcaLista <- lerIpcaLista 1 []
    let (menorIpca, menorMes) = menorIpcaMes ipcaLista
        (maiorIpca, maiorMes) = maiorIpcaMes ipcaLista
        media = calcularMedia ipcaLista
    printf "A média é: %.2f\n" media
    putStrLn $ "O menor IPCA e seu respectivo mês foi: " ++ show menorIpca ++ " " ++ menorMes
    putStrLn $ "O maior IPCA e seu respectivo mês foi: " ++ show maiorIpca ++ " " ++ maiorMes

lerIpcaLista :: Int -> [(String, Double)] -> IO [(String, Double)]
lerIpcaLista 21 ipcaLista = return ipcaLista
lerIpcaLista indicaIndiceIpca ipcaLista = do
    putStrLn "Informe o mês o ano e o IPCA respectivo: "
    entrada <- getLine
    if entrada == "*"
        then return ipcaLista
        else do
            let entradaSplit = words entrada
                mesAno = head entradaSplit
                ipca = read (entradaSplit !! 1) :: Double
            lerIpcaLista (indicaIndiceIpca + 1) ((mesAno, ipca) : ipcaLista)

calcularMedia :: [(String, Double)] -> Double
calcularMedia ipcaLista = soma / quantidade
    where
        (soma, quantidade) = foldr (\(_, ipca) (s, q) -> (s + ipca, q + 1)) (0.0, 0.0) ipcaLista

menorIpcaMes :: [(String, Double)] -> (Double, String)
menorIpcaMes = foldr (\(mesAno, ipca) (menor, mes) -> if ipca < menor then (ipca, mesAno) else (menor, mes)) (10000.0, "")

maiorIpcaMes :: [(String, Double)] -> (Double, String)
maiorIpcaMes = foldr (\(mesAno, ipca) (maior, mes) -> if ipca > maior then (ipca, mesAno) else (maior, mes)) (0.0, "")
