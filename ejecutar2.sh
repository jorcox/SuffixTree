echo 'Compilando el proyecto'
rm -rf bin
mkdir bin
javac -d bin -cp .:bin src/compactSuffixTree/*.java
javac -d bin -cp .:bin src/main/*.java
javac -d bin -cp .:bin src/test/*.java
javac -d bin -cp .:bin src/ukkonenSuffixTree/*.java

echo 'Ejecutando prueba String Matching 1'
java -cp ./bin main.SuffixTree 4 GATTACA CGATCGTCGTCAGTGCAGCTGATGCGACGTGAGCTACATCGGTCAGTGTCGTGAAAAGATTACACGTGCGGCGTAGAGCTGTGTGTGCGTG
echo 'Ejecutando prueba String Matching 2'
java -cp ./bin main.SuffixTree 4 GATTA ACATCGGTCAGTGTCGTGAAAAGATTACACGTGCGGCGTAGATTAGAGCTGATTAGTGTGGATTATGCGTG
echo 'Ejecutando prueba String Matching 3'
java -cp ./bin main.SuffixTree 26 melon ellocodelaporteriacomemelonconjamon
echo 'Ejecutando prueba String Matching 4'
java -cp ./bin main.SuffixTree 26 mauri lospresuntosasesinossonmauriciohidalgoyfernandonavarro
echo 'Ejecutando prueba Substring 1'
java -cp ./bin main.SuffixTree 26 apd apdgranasignatura aprendereloj apdologaritmo apendice apppppdddddd
echo 'Ejecutando prueba Substring 2'
java -cp ./bin main.SuffixTree 26 mauri lospresuntosasesinossonmauriciohidalgoyfernandonavarro lejianomola maurilejia ijugjghuh
echo 'Ejecutando prueba Substring 3'
java -cp ./bin main.SuffixTree 26 malabarista a
echo 'Ejecutando prueba Substring 4'
java -cp ./bin main.SuffixTree 26 heuristica lasheuristicassonmuyutiles herusiticasparatodos superheroes superheuristicas


if [ $# -ne 0 ]
  then
    if [ $1 = "S" ]
      then
        echo "Bateria de pruebas de rendimiento"
        java -cp ./bin test.Tests    
      elif [ $1 = "N" ]
        then
          echo "No se realizara la bateria de pruebas de rendimiento"
      else
          echo "Introducido parametro desconocido, introducir S o N. No se realizara la bateria de pruebas de rendimiento"
    fi
  else
    echo "No se ha introducido argumento S o N, no se realizara la bateria de pruebas de rendimiento"
fi
