<?php
//processar(receber os dados de uma página)

//SUPER GLOBAIS DE CAPTURA DE CAMPOS
//$_GET OU $_POST

//$_GET["NOME _PRODUTO"]
//$_GET["PRECO _PRODUTO"]



echo 'Nome do produto:' .$_GET ['nome_produto'];
echo '<br>';
echo 'Preço do produto:' .$_GET ['preco_produto'];
echo '<br>';
echo 'Categoria:' .$_GET ['categoria_produto'];

