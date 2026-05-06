# Variáveis
CXX = g++
CXXFLAGS = -Wall -g -Iinclude
BIN_DIR = bin
SRC_DIR = src
TEST_DIR = test

# Alvos principais
all: $(BIN_DIR)/meu_programa.exe $(BIN_DIR)/testeRegressivo.exe

# 1. Regra para compilar os arquivos .cpp da pasta src em objetos .o
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 2. Regra para compilar o arquivo de teste em objeto .o
$(BIN_DIR)/test_main.o: $(TEST_DIR)/main.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 3. Executável do Jogo (usa main.o, dados.o e a nova bib.o)
$(BIN_DIR)/meu_programa.exe: $(BIN_DIR)/main.o $(BIN_DIR)/dados.o $(BIN_DIR)/bib.o
	$(CXX) $(CXXFLAGS) $^ -o $@

# 4. Executável de Teste Regressivo (usa bib.o e o main de testes)
$(BIN_DIR)/testeRegressivo.exe: $(BIN_DIR)/bib.o $(BIN_DIR)/test_main.o
	$(CXX) $(CXXFLAGS) $^ -o $@

# Regra para limpar a bagunça
clean:
	rm -f $(BIN_DIR)/*.o $(BIN_DIR)/*.exe