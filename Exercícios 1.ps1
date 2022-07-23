#3 pequenos exercicios utilizando alguns comandos básicos.

#• Criar um Script no PowerShell, que leia o nome do aluno e 3 notas, faça a média e mostre o resultado

Clear-Host
$aluno = Read-Host "Insira o nome do aluno"
[int]$p1 = Read-Host "Insira o número da nota da P1"
[int]$p2 = Read-Host "Insira o número da nota da P2"
[int]$p3 = Read-Host "Insira o número da nota do Trabalho final"

[int]$med = $p1 + $p2 + $p3
[int]$med = $med/3

Clear-Host
Write-Host "------------------------------------------------"
Write-Host "Nome do aluno: $aluno                           "
Write-Host "Média Final  $med                               "
Write-Host "------------------------------------------------"
Write-Host "                  Histórico                     "
Write-Host "------------------------------------------------"
Write-Host "P1: $p1"
Write-Host "P2: $p2"
Write-Host "Trabalho final: $p3"
Write-Host "------------------------------------------------"


# Criar um Script que recebe: - O salario de um funcionário - O salario mínimo. - O Script deverá calcular e exibir - Quantos salários mínimos ganha este funcionário

Clear-Host
[float]$salarymin = Read-Host "Informe o valor do salário mínimo atual"
[float]$salaryfun = Read-Host "Informe o valor do salário do funcionário"
[int]$qtmin = $salaryfun/$salarymin 
Write-Host "O funcionário recebe $qtmin salários minimos"

# Criar um Script que recebe: - Leia o nome do Usuário - O Script deverá - Abrir o notepad e mostrar uma mensagem de boas vindas dentro do notepad (bloco de notas) - com o nome do Usuário (usar variáveis)

Clear-Host
$nameuser = Read-Host "Informe o nome do usuário"
$save = "C:\Users\Eu\Pasta\"+ $nameuser + ".txt" #Alterar com o caminho onde quer ser salvo
$welcome = "Seja bem vindo ao Notepad $nameuser!" | Out-File -FilePath $save
Start $save 
