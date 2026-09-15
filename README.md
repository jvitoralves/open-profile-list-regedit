# Open ProfileList in Regedit (VBScript)

Um script leve em VBScript para Windows 11 que navega automaticamente até a chave de registro **ProfileList**, onde ficam armazenados os perfis de usuários do sistema.

##  Como Funciona

Ao dar um duplo clique no arquivo, o script executa o seguinte fluxo:
1. Exibe uma caixa de confirmação (**Sim / Não**) perguntando se o usuário deseja abrir a pasta.
2. Encerra instâncias em segundo plano do `regedit.exe` para permitir a atualização de navegação.
3. Altera temporariamente o valor da chave `LastKey` do Windows para apontar diretamente para a `ProfileList`.
4. Inicializa o Editor do Registro já focado na pasta desejada.

##  Caminho Acessado

```text
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList
