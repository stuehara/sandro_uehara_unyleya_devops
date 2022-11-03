recurso  " aws_security_group "  " acesso-tcp " {
  provedor = aws
  nome         =  " acesso-tcp "
  descrição =  " acesso-tcp "

entrada {
    descrição       =  " Acesso RDP "
    from_port         =  3389
    to_port           =  3389
    protocolo          =  " tcp "
    cidr_blocks       = [ " 0.0.0.0/0 " ]
  }

  entrada {
    descrição       =  " Acesso WinRM "
    from_port         =  5986
    to_port           =  5986
    protocolo          =  " tcp "
    cidr_blocks       = [ " 0.0.0.0/0 " ]
  
  }
  marcas = {
    Nome =  " tcp "
  }
}
