let tituloH1 = document.createElement("h1")

tituloH1.innerText = "Raças Pet"
tituloH1.id = "Título"

let conteudo = document.createElement("div")
conteudo.innerHTML = `
<h2>Lulu da Pomerânia</h2>
    <br>
    <img src='img/lulu.jpg'>
    <p>Se trata de uma raça de cachorro de companhia muito dócil e brincalhona, que além de se dar muito bem com seus pais humanos. É muito afetuoso e não é considerado um cão agressivo, mas pode ser receoso com desconhecidos num primeiro momento. Em nosso país, ele também pode ser chamado de lulu da pomerânia.</p>
    <br>
    <p><strong>R$ 15.000,00</strong></p>
`

let body = document.querySelector("body")
body.appendChild(tituloH1)
body.appendChild(conteudo)