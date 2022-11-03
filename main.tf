provedor  " aws " {
  região   =  " us-leste-2 "
}

recurso  " aws_instance "  " WinServer2019-IIS " {
  ami =  " ami-0fcea9534c0257ede "
  instance_type =  " t2.micro "
  key_name =  " chave-windows-server "
  marcas = {
    Nome =  " WinServer2019-IIS "
  }
  vpc_security_group_ids = [ " ${ aws_security_group . acesso-tcp . id } " ]
}
