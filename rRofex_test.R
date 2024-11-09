# rRofex_test.R - R version 4.4.2
#
# Previo a ejecutar este script instalar:
#
#     devtools::install_github("matbarofex/rRofex")
#
# Se van a instalar todas las dependencias, usa fuertemente TidyVerse.
# 
# Al ejecutar:

library(rRofex)

# El resultado sera:
#    
#    rRofex v.2.0.7
#    An Open Source initiative by Matba Rofex
#
# Prerequisitos:
# - cuenta comitente en un broker con Matriz
# - minima tenencia (un instrumento)
#
# Variables necesarias:

user <- "CUIT"
pass <- "xxxx"
conn <- "https://api.eco.xoms.com.ar"
acct <- "xxxx"

# acct es el numero de la cuenta comitente
# conn varia segun el broker, consultar el repositorio:
# https://github.com/matbarofex/rRofex

# login a la plataforma XOMS

xapi <- trading_login(user, pass, conn)

# Se observa en la consola
#    Succesfully connected with rRofex to https://api.eco.xoms.com.ar...
#

# Fecha y hora del ultimo login:

login_date_time(xapi)

# Resultado: [1] "2024-11-09 16:53:57.962591"

# Peticion de la tenencia en la cuenta comitente:

myAcct <- trading_account(xapi, acct)

View(myAcct)

# la salida de View() la encontrara en el repositorio como "acct.png"

# No hace falta realizar un llamado de desconexion
#
# Envie su feedback a carlos dot crosetti at outlook dot com
#






myAcct <- trading_account(xapi, acct)
View(myAcct)






