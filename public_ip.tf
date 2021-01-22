resource "azurerm_public_ip" "user16-publicip1" {  
    name                = "user16publicIP1"  
    location            = azurerm_resource_group.user16-rg.location  
    resource_group_name = azurerm_resource_group.user16-rg.name  
    allocation_method   = "Static"  
    domain_name_label   = "user16pubip1"
	
## Resource Group 이름에 대문자를 쓰면 에러 발생 (so, 리소스 그룹은 소문자로 생성)
## 동일 Region에 추가 Public IP 생성시에는 기존 Public IP와 다른 이름을 할당해야 함으로 아래처럼 직접 입력해도 됨
# domain_name_label   = "davidpubip2"

	tags = {    
		environment = "staging"  
	}
}


resource "azurerm_public_ip" "user16-publicip2" {  
    name                = "user16publicIP2"  
    location            = azurerm_resource_group.user16-rg.location   
    resource_group_name = azurerm_resource_group.user16-rg.name  
    allocation_method   = "Static"  
    domain_name_label   = "user16pubip2"  
	
## Resource Group 이름에 대문자를 쓰면 에러 발생 (so, 리소스 그룹은 소문자로 생성)
## 동일 Region에 추가 Public IP 생성시에는 기존 Public IP와 다른 이름을 할당해야 함으로 아래처럼 직접 입력해도 됨
# domain_name_label   = "davidpubip2"

	tags = {    
		environment = "staging"  
	}
}

