


// let ask = prompt("Você gostaria de adicionar uma linha de código css");

// while (ask != true) {
//     const tabela = [];

    
//     const add = prompt("Digite o código");
//     tabela.push(add);
//     console.log(tabela);
    
// }


// let ask = prompt("Você gostaria de adicionar uma linha de código css");
// const tabela = [];

// while (ask != true) {
//     tabela.push(ask);
//     console.log(tabela)
    
// }


let ask = prompt("Você gostaria de adicionar uma linha de código css");
const tabela = [];

while (ask != "sair") {

    const add = prompt("Digite o código");
    tabela.push(add);
    console.log(tabela.sort());
    if (add == "sair") {
        
        break
    }
    
}
