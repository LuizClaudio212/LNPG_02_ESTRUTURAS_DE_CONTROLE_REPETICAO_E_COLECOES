import Control.Monad

main :: IO ()
main = do
    putStrLn "Qual é a quantidade de passageiros?"
    quantidadePassageiros <- readLn :: IO Int
    listaChecagem quantidadePassageiros 1

listaChecagem :: Int -> Int -> IO ()
listaChecagem 0 _ = return ()
listaChecagem n assento = do
    putStrLn "Tem RG:[S/N]"
    hasRG <- getLine
    if hasRG `elem` ["N", "n"]
        then putStrLn "A saída é nessa direção"
        else do
            putStrLn "Tem Passagem:[S/N]"
            hasPassagem <- getLine
            if hasPassagem `elem` ["N", "n"]
                then putStrLn "A recepção é nessa direção"
                else do
                    putStrLn "Digite sua data de nascimento: [DD/MM/AAAA]"
                    nascimento <- getLine
                    putStrLn "Digite a data de nascimento da sua passagem: [DD/MM/AAAA]"
                    dataPassagem <- getLine
                    if nascimento /= dataPassagem
                        then putStrLn "190"
                        else do
                            putStrLn $ "O seu assento é A" ++ show assento ++ ", Tenha um bom dia!"
                            listaChecagem (n - 1) (assento + 1)
