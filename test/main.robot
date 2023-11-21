*** Settings ***
Library   SeleniumLibrary
Library  OperatingSystem
Resource  ../Ressource/Variables.robot

*** Test Cases ***
Test d'ouverture du site web
    Open Browser  about:blank  Edge
    Maximize Browser Window
    Go To  ${website}
    Sleep  2s
Test consultation de la page d'inscription
    Click Element  xpath=/html/body/header/nav/div/div/ul/li[4]/a
    Wait Until Page Contains Element  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[2]/div/p/input
    Sleep  2s

Test d'inscription d'un utilisateur
    Input Text  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[1]/div[1]/input  ${username}
    Sleep  2s
    Input Text  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[1]/div[2]/input  ${firstname}
    Sleep  2s
    Input Text  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[1]/div[3]/input  ${lastname}
    Sleep  2s  
    Input Text  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[1]/div[4]/input  ${email}
    Sleep  2s
    Input Text  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[1]/div[5]/input  ${phone}
    Sleep  2s
    Input Text  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[1]/div[6]/input  ${password}
    Sleep  2s
    Input Text  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[1]/div[7]/input  ${password}
    Sleep  2s
    Input Text  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[1]/div[8]/textarea  ${address}
    Sleep  2s
    
Test d'accord d'inscription
    Click Element  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[2]/div/p/input
    Alert Should Be Present
    Wait Until Page Does Not Contain Element  xpath=/html/body/div/div/section/div/div/div/div/div/form/div[2]/div/p/input
    Alert Should Be Present
    Press Keys  None  \\13
    Sleep  2s
Test de connection au compte
    Input Text  xpath=/html/body/div/div[2]/div[2]/form/input[1]  ${username}
    Sleep  1s
    Input Password  xpath=/html/body/div/div[2]/div[2]/form/input[2]  ${password}
    Sleep  1s
    Click Element  xpath=/html/body/div/div[2]/div[2]/form/input[3]
    Wait Until Page Contains Element  xpath=/html/body/section[1]
Test de navigation dans la page d'accueil
    Sleep  2s

Test de Click sur un produit
    Click Element  xpath=/html/body/section[2]/div/div[2]/div[1]/div/div[2]/h5/a
    Sleep  2s

Test de Modification la quantité du premier element
    Input Text  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[1]/div/div[2]/input[1]  4
    Sleep  1s
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[1]/div/div[2]/input[2]
    Sleep  2s
Test de modification de la quntité du deuxieme plat
    Input Text  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[2]/div/div[2]/input[1]  3
    Sleep  1s
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[2]/div/div[2]/input[2]
    Sleep  2s
Test de modification de la quntité du troisieme plat
    Input Text  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[3]/div/div[2]/input[1]  2
    Sleep  1s
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[3]/div/div[2]/input[2]
    Sleep  2s
Test d'ajout du plat à la commande
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[1]/div/div[3]/div/a
    Sleep  2s
Test de payement de la commande
    Click Element  xpath=/html/body/div/div/div[3]/form/div/div/div/div/div[2]/p/input
    Alert Should Be Present
    Sleep  2s
Test de confirmation de payement
    Press Keys  None  \\13
    Alert Should Be Present
    Sleep  2s
    Press Keys  None  \\13

Test de supression du plat commandé
    Sleep  2s
    Click Element  xpath=/html/body/div/section/div/div/div[2]/div/div/table/tbody/tr/td[6]/a
    Alert Should Be Present  
    Sleep  2s
Test de retour à la page d'accueil
    Go To  ${website}
    Sleep  2s
Test de visite de restaurant
    Click Element  xpath=/html/body/header/nav/div/div/ul/li[2]/a
    Sleep  2s
Test de navigation dans la page de restaurant
    Sleep  1s

Test de consultation des menus
    Click Element  xpath=/html/body/div/section/div/div/div[2]/div/div/div[2]/div/div/a
    Sleep  2s
Test d'ajout du premier plat
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[1]/div/div[2]/input[2]
    Sleep  2s
Test d'ajout du deuxieme plat
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[2]/div/div[2]/input[2]
    Sleep  2s
Test d'ajout du troiseme plat
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[2]/div/div[2]/div[3]/div/div[2]/input[2]
    Sleep  2s
Test de suppression du premier plat de la carte
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[1]/div/div[2]/div/div[1]/a/i
    Sleep  1s
Test de suppression du deuxieme plat de la carte
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[1]/div/div[2]/div/div[3]/a/i
    Sleep  2s

Test d'ajout de la commande
    Click Element  xpath=/html/body/div[1]/div[3]/div/div[1]/div/div[3]/div/a
    Alert Should Be Present
    Sleep  2s
Test de payement des plats
    Sleep  1s
    Alert Should Be Present
    Click Element  xpath=/html/body/div/div/div[3]/form/div/div/div/div/div[2]/p/input
    
    Press Keys  None  \\13
    Alert Should Be Present
    Press Keys  None  \\13
    Sleep  2s

Test de retour à la page precedente
    Go To  ${website}
    Sleep  2s

Test de filtre de restaurant selon le continent
    Click Element  xpath=/html/body/section[4]/div/div[1]/div[2]/div/nav/ul/li[2]/a
    Sleep  2s

Test de filtre de restaurant italien
    Click Element  xpath=/html/body/section[4]/div/div[1]/div[2]/div/nav/ul/li[3]/a
    Sleep  2s

Test de filtre de restaurant selon chinois
    Click Element  xpath=/html/body/section[4]/div/div[1]/div[2]/div/nav/ul/li[4]/a
    Sleep  2s

Test de filtre de restaurant selon Americain
    Click Element  xpath=/html/body/section[4]/div/div[1]/div[2]/div/nav/ul/li[4]/a
    Sleep  2s

Test de deconnexion du compte
    Click Element  xpath=/html/body/header/nav/div/div/ul/li[4]/a
    Sleep  2s
Test de fermeture du navigateur
    Close Browser