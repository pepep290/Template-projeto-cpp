# Variáveis de compilador e flags
CXX = g++
CXXFLAGS = -Wall -g -Iinclude

# Pastas
SRC_DIR = src
BIN_DIR = bin

# Arquivos fonte e objetos
# O wildcard pega automaticamente todos os .cpp da pasta src
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)
# Cria uma lista de arquivos .o dentro da pasta bin
OBJECTS = $(SOURCES:$(SRC_DIR)/%.cpp=$(BIN_DIR)/%.o)

# Nome do executável final
TARGET = $(BIN_DIR)/meu_programa.exe

# Regra principal (a primeira que o 'make' executa)
all: $(TARGET)

# Regra para linkar os objetos e gerar o executável
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $(TARGET)

# Regra para compilar cada arquivo .cpp em um arquivo .o
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Regra para limpar os arquivos gerados
clean:
	rm -f $(BIN_DIR)/*.o $(TARGET)