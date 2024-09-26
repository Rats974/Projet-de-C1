CC = gcc #Le compilateur à utiliser
CFLAGS=-W -Wall -ansi -pedantic -std=c99 -g # Options de compilation à utiliser avec GCC

SRCS = main.c btree.c repl.c # Liste des fichiers sources à utiliser
OBJS = $(SRCS:.c=.o) #Passe les .C en .O
TARGET = ArbreBinaire

all: $(TARGET) # Règle principale

$(TARGET): $(OBJS) #Génére l'exécutable 
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) 

%.o: %.c #Règle de transformation des fichier .C en .O
	$(CC) $(CFLAGS) -c $< -o $@

clean: #Règle de nettoyage des fichiers générés
	rm -f $(OBJS) $(TARGET)
# "C:\ProgramData\chocolatey\bin\make.exe"  -  Powershell ne connait pas le chemin lors de l'instruction make sur VSCODE donc le chemin doit être indiqué lors de la commande