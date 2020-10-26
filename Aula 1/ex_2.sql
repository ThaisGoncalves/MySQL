insert into tb_produtos (produto, marca, loja, preco)
	values("Televisao", "LG", "Casas Bahia", 1500);

insert into tb_produtos (produto, marca, loja, preco)
	values("Televisao", "LG", "Casas Bahia", 1500);
    
insert into tb_produtos (produto, marca, loja, preco)
	values("Tenis", "Nike", "Netshoes", 500);
    
insert into tb_produtos (produto, marca, loja, preco)
	values("Camiseta", "Hering", "Hering", 50);
    
insert into tb_produtos (produto, marca, loja, preco)
	values("Notebook", "Asus", "Magalu", 3600);
    
select preco from tb_produtos where preco>500;
select preco from tb_produtos where preco<500;

update tb_produtos set preco=60 where id=4;
