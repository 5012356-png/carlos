const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("1. Zona Esférica \n2. Casquete Esférico");
readline.question('Elija una opción: ', (opcion) => {
  if (opcion === '1') {
    readline.question('h: ', (h) => {
      readline.question('r1: ', (r1) => {
        readline.question('r2: ', (r2) => {
          let vol = (Math.PI * h * (Math.pow(h,2) + 3*Math.pow(r1,2) + 3*Math.pow(r2,2))) / 6;
          console.log(`Volumen Zona: ${vol.toFixed(2)}`);
          readline.close();
        });
      });
    });
  } else {
    readline.question('R: ', (R) => {
      readline.question('h: ', (h) => {
        let vol = (Math.PI * Math.pow(h,2) * (3*R - h)) / 3;
        console.log(`Volumen Casquete: ${vol.toFixed(2)}`);
        readline.close();
      });
    });
  }
});