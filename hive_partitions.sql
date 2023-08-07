1. Grandes volumes de dados -> partições para facilitar a consulta:
  - Estática: precisamos especificar o valor da coluna de partição em casa instrução:
    PARTITION (country='BR')
  - Dinâmico: só fornecer a coluna referência
  SET hive.exec.dynamic.partition = true; -- habilitar o uso das partições dinâmicas
  SET hive.exec.dynamic.partition.mode = nonstrict; -- permitir a criação de partições baseadas em mais de uma coluna
2. Apache Spark:
spark.sql('query').show()
ou 
display(spark.sql('query'))
  - Se quisermos pular linhas na query temos que utilizar 3 aspas simples:
spark.sql( '''
  query
''' ).show()

