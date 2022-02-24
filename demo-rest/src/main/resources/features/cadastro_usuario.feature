#language: pt
Funcionalidade: Cadastro usuario 

  #@CT01_TestarServico
  #Esquema do Cenario: Testar Servico
    #Dado que o sistema "<URL>" esteja acessivel
#
    #Exemplos: 
      #| URL                                             |
      #| /accountservice/accountrest/api/v1/health-check |

  @CT02_cadastro_usuario
  Esquema do Cenario: cadastro_usuario
    Dado que o sistema "<URL>" esteja acessivel
    Entao o usuario cria uma conta de usuario "<accountType>""<address>""<allowOffersPromotion>""<aobUser>""<cityName>""<country>""<email>""<firstName>""<lastName>""<loginName>""<password>""<phoneNumber>""<stateProvince>""<zipcode>"

    Exemplos: 
      | URL                                             | accountType | address  | allowOffersPromotion | aobUser | cityName | country      | email             | firstName | lastName   | loginName | password  | phoneNumber | stateProvince | zipcode |
      | /accountservice/accountrest/api/v1/health-check | USER        | endereço | true                 | true    | cidade   | AUSTRALIA_AU | email03@teste.com | nometest  | sobrenomeT |           | Teste@123 |  1199665544 | estado        | 0223654 |

  #@CT03_Login
  #Esquema do Cenario: Realizar Login
    #Dado que o sistema "<URL>" esteja acessivel
    #E o usuario realiza o login  com "<email>" "<password>" "<loginName>"
#
    #Exemplos: 
      #| URL                                             | email             | password  | loginName  |
      #| /accountservice/accountrest/api/v1/health-check | email03@teste.com | Teste@123 | 1645708503488 |
      #| /accountservice/accountrest/api/v1/health-check | email03@teste.com | Teste@123 | testando07 |

  #@CT04_AdicionarProdutoCarrinho
  #Esquema do Cenario: AdicionarProdutoCarrinho
   #	Dado que o sistema "<URL>" esteja acessivel
    #E adicionar um produto ao carrinho "<email>" "<password>" "<loginName>" "<color>" "<productId>" "<quantidade>" "<userId>"
#
    #Exemplos: 
      #| URL                                             | email             | password  | loginName  | color  | productId | quantidade | userId    |
      #| /accountservice/accountrest/api/v1/health-check | email03@teste.com | Teste@123 | testando07 | 414141 |        20 |          1 | 271680216 |