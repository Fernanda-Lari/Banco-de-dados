<?php
//inclui o arquivo de configuração (com o banco de dados)
include "config.php";
//verifica se a conexão foi realizada
if (!$conn){
    //caso falhe, exibe mensagem de erro e encerra a execução 
    die("Falha na conexão: ". mysqli_connect_error());
}

//Recebe os dados do formulário 
$nome = '';
$dtnasc = '';
$celular = '';
$email = '';
$ra = '';
$endereco = '';
$num_end = '';
$bairro = '';
$cidade = '';

//cria variável para inserir registro 
$sql = "";

//executa a consulta SQL. Se falhar, exibe o erro do banco de dados 