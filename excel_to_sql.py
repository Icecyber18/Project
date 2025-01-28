# Script per convertire il file Excel (creato da altro script) in una tabella SQL
# Creato da Pastore Pietro come parte del PW Pegaso

# Importa le librerie necessarie
import pandas as pd      # Pandas - libreria per la lettura e analisi dei dati da Excel
import os               # OS - libreria per operazioni sul sistema operativo

def get_sql_data_type(dtype):
    """Converte i tipi di dati pandas in tipi SQL appropriati
    
    Args:
        dtype: tipo di dato pandas da convertire
    Returns:
        stringa con il tipo SQL corrispondente
    """
    # Controlla il tipo di dato e restituisce il corrispondente tipo SQL    
    if 'int' in str(dtype):          # Se è un numero intero (es. 1, 2, 3, ecc)
        return 'INT'                  # Usa il tipo INT di SQL
    elif 'float' in str(dtype):      # Se è un numero decimale (Es. 1.5, 2.7, ecc )
        return 'FLOAT'                # Usa il tipo FLOAT di SQL
    elif 'datetime' in str(dtype):   # Se è una data/ora (Es. 2025-01-27 10:30:00)
        return 'DATETIME'             # Usa il tipo DATETIME di SQL
    else:                            # Per tutti gli altri tipi (principalmente testo)
        return 'VARCHAR(255)'         # Usa VARCHAR con lunghezza massima 255 caratteri

def generate_create_table_sql(df):
    """Genera il codice SQL per creare la tabella basandosi sulla struttura del DataFrame
    
    Args:
        df: DataFrame pandas contenente i dati del file Excel
    Returns:
        stringa con il comando SQL CREATE TABLE
    """
    # Inizializza la lista che conterrà le definizioni delle colonne
    columns = []
    # Aggiunge l'ID come prima colonna - sarà la chiave primaria autoincrement (la chiave primaria è univoca per ogni riga)
    columns.append("id INT AUTO_INCREMENT PRIMARY KEY")
    
    # Itera su ogni colonna del DataFrame
    for col in df.columns:
        # Pulisce il nome della colonna:
        # - converte in minuscolo
        # - sostituisce gli spazi con underscore per compatibilità SQL
        clean_col = col.lower().replace(' ', '_')
        # Determina il tipo SQL appropriato per la colonna analizzando i dati
        sql_type = get_sql_data_type(df[col].dtype)
        # Aggiunge la definizione completa della colonna alla lista
        # es: "nome VARCHAR(255) NOT NULL"
        columns.append(f"{clean_col} {sql_type} NOT NULL")

    # Crea lo statement SQL completo per la creazione della tabella
    # Unisce tutte le definizioni delle colonne con virgole e newline
    create_table_sql = f"""
CREATE TABLE users (
    {',\n    '.join(columns)}
);
"""
    return create_table_sql

def generate_insert_statements(df):
    """Genera gli statement SQL INSERT per inserire i dati nella tabella
    
    Args:
        df: DataFrame pandas contenente i dati da inserire
    Returns:
        stringa con tutti i comandi SQL INSERT
    """
    # Lista che conterrà tutti gli statement INSERT
    insert_statements = []
    # Prepara i nomi delle colonne puliti per SQL (come sopra)
    columns = [col.lower().replace(' ', '_') for col in df.columns]
    
    # Itera su ogni riga del DataFrame
    for _, row in df.iterrows():
        # Lista che conterrà i valori formattati per SQL di questa riga
        values = []
        # Per ogni valore nella riga corrente
        for val in row:
            if pd.isna(val):  # Se il valore è NULL/NaN/vuoto
                values.append('NULL')
            elif isinstance(val, (int, float)):  # Se è un numero (intero o decimale)
                values.append(str(val))          # Converte in stringa senza apici
            else:  # Se è una stringa
                # Escape degli apici singoli per evitare errori SQL
                # es: "O'Connor" diventa "O''Connor"
                val_escaped = str(val).replace("'", "''")
                values.append(f"'{val_escaped}'")  # Aggiunge gli apici
        
        # Crea lo statement INSERT completo per questa riga
        insert_sql = f"""
INSERT INTO users ({', '.join(columns)})
VALUES ({', '.join(values)});"""
        insert_statements.append(insert_sql)
    
    # Unisce tutti gli statement INSERT con newline
    return "\n".join(insert_statements)

def save_sql_file():
    """Funzione principale che coordina la lettura dell'Excel e la creazione del file SQL"""
    # Definisce il percorso completo del file Excel da leggere
    excel_path = "C:/Project_Work_Pegaso/Anagrafica_clienti_Pw_Pegaso.xlsx" # Percorso all'interno del mio PC
    
    # Verifica se il file Excel esiste prima di procedere
    if not os.path.exists(excel_path):
        print(f"File Excel non trovato in: {excel_path}")
        return
    
    try:
        # Legge il file Excel in un DataFrame pandas
        df = pd.read_excel(excel_path)
        
        # Genera il codice SQL per la creazione della tabella
        create_table = generate_create_table_sql(df)
        # Genera gli statement SQL per inserire i dati
        insert_statements = generate_insert_statements(df)
        
        # Combina CREATE TABLE e INSERT in un unico script SQL
        complete_sql = f"{create_table}\n{insert_statements}"
        
        # Definisce il percorso dove salvare il file SQL risultante
        output_path = "C:/Project_Work_Pegaso/create_users_table.sql"
        # Apre il file in modalità scrittura e codifica UTF-8
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(complete_sql)  # Scrive il contenuto SQL
        print(f"File SQL generato con successo in: {output_path}")
        
    except Exception as e:
        # Gestisce eventuali errori durante l'esecuzione
        print(f"Errore durante la generazione del file SQL: {e}")

# Ingresso del programma
if __name__ == "__main__":
    save_sql_file()  # Esegue la funzione principale quando lo script viene eseguito direttamente 