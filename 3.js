const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// Функция для переворота числа
function revers_num(num) {
  let revers = 0;
  while (num !== 0) {  
    revers = revers * 10 + num % 10;
    num = Math.floor(num / 10);
  }
  return revers;
}

async function main() {
  // Чтение n
  const n = parseInt(await new Promise(resolve => rl.question('', resolve)));
  // Проверка корректности ввода
  if (isNaN(n) || n <= 0) {
    console.log("Количество элементов должно быть положительным и целым");
    rl.close();
    return;
  } 
  else {
    let output = '';
    for (let i = 0; i < n; ++i) {
      const num = parseInt(await new Promise(resolve => rl.question('', resolve)));
      
      // Проверка корректности ввода
      if (isNaN(num) || num <= 0) {
        console.log("Числа должны быть положительным и целым");
        rl.close();
        return;
      }
      else {
        // Собираем вывод в переменную
        output += revers_num(num);
        if (i < n - 1) output += ' ';
      }
    }
    // Выводим все сразу
    console.log(output);
  }
  
  rl.close();
}

// Вызов main
main();
