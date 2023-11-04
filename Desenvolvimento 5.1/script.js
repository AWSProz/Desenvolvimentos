const titulo = document.getElementById("titulo");
const listaNaoOrdenada = document.querySelector("ul");
const ancora = document.querySelector("a");
const listaOrdenada = document.getElementById("lista-ordenada");


titulo.innerText = ("Este é o título da página");

ancora.innerText = ("Proz educação");

listaNaoOrdenada.innerHTML = `
        <li>Primeiro item</li>
        <li>Segundo item</li>
        <li>Terceiro item</li>
`;

listaOrdenada.innerHTML = `
        <li>
            <a href="https://google.com.br">Google</a>
        </li>
        <li>
            <a href="https://amazon.com.br">Amazon</a>
        </li>
        <li>
            <a href="https://facebook.com.br">Facebook</a>
        </li>
`;