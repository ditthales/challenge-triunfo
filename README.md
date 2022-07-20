# challenge-triunfo


<h1>CinEmo: um app de filmes para pessoas tristes</h1>
  
<p>Sejam bem vindos ao meu app de filmes. Feito em Swift usando UIKit, este é meu primeiro contato com conceitos novos como MVC e APIs. Tento explorar ao máximo as possibilidades de uso da API e ter um tema: ser um app de filmes para pessoas tristes.</p>
<p>Para ver o que o app é capaz de fazer você pode baixar o repositório e abrir no xCode. O app está com autolayout e deverá funcionar bem em qualquer iPhone. Caso queira ter uma impressão rápida você pode conferir alguns screenshots abaixo.</p>

<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9d46fa6c-b7f9-45fe-86f8-497a984241b1/Simulator_Screen_Shot_-_iPhone_12_-_2022-07-19_at_23.05.31.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220720%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220720T022836Z&X-Amz-Expires=86400&X-Amz-Signature=a37cf20b636e41c89be5357d154ccd7571f2ffddaf25695ee67cb728ea7added&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Simulator%2520Screen%2520Shot%2520-%2520iPhone%252012%2520-%25202022-07-19%2520at%252023.05.31.png%22&x-id=GetObject" height="500"></img>

<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b4a25bf3-f305-4d67-8387-9bbcc9260501/Simulator_Screen_Shot_-_iPhone_12_-_2022-07-19_at_23.06.34.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220720%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220720T023055Z&X-Amz-Expires=86400&X-Amz-Signature=8754a4312b9b8fbc9e7f38bc18f737ea86cdf2ff3e4ccd422740600d7cd356b6&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Simulator%2520Screen%2520Shot%2520-%2520iPhone%252012%2520-%25202022-07-19%2520at%252023.06.34.png%22&x-id=GetObject" height="500"></img>

<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/3b626a0b-227e-4778-be05-d811758d81f8/Simulator_Screen_Shot_-_iPhone_12_-_2022-07-19_at_23.06.58.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220720%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220720T023217Z&X-Amz-Expires=86400&X-Amz-Signature=b31f7396dcaf28c3da3e51ca3a4c29d5e64b52bd37755286f046585d33c1dbd4&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Simulator%2520Screen%2520Shot%2520-%2520iPhone%252012%2520-%25202022-07-19%2520at%252023.06.58.png%22&x-id=GetObject" height="500"></img>

<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/5c7aa231-f1c8-4a49-8515-220f6a632d01/Simulator_Screen_Shot_-_iPhone_12_-_2022-07-19_at_23.07.46.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220720%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220720T023256Z&X-Amz-Expires=86400&X-Amz-Signature=5cd01cd77004cd4a2932c4ef4617aad303140c3154a9b9d272118be4b8b5ddc7&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Simulator%2520Screen%2520Shot%2520-%2520iPhone%252012%2520-%25202022-07-19%2520at%252023.07.46.png%22&x-id=GetObject" height="500"></img>

<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/1d203e6a-5f30-4890-bdaa-430aa3a75493/Simulator_Screen_Shot_-_iPhone_12_-_2022-07-19_at_23.08.31.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220720%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220720T023323Z&X-Amz-Expires=86400&X-Amz-Signature=1fb6546937dcdb578e21da836d2935e0ec3a5fefbe82bf242285dfcbcdbdfffb&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Simulator%2520Screen%2520Shot%2520-%2520iPhone%252012%2520-%25202022-07-19%2520at%252023.08.31.png%22&x-id=GetObject" height="500"></img>

<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/6067780e-b2e9-455c-a3e2-3d3ea1d6acb9/Simulator_Screen_Shot_-_iPhone_12_-_2022-07-19_at_23.09.24.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220720%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220720T023353Z&X-Amz-Expires=86400&X-Amz-Signature=0dccc017332fce7b7fb19df40620c6e40b16c1ea956f28190bfcca3375b9d188&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Simulator%2520Screen%2520Shot%2520-%2520iPhone%252012%2520-%25202022-07-19%2520at%252023.09.24.png%22&x-id=GetObject" height="500"></img>

<img src="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/e4cce72d-817b-4ac6-b957-004f1a6a1466/Simulator_Screen_Shot_-_iPhone_12_-_2022-07-19_at_23.09.49.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220720%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220720T023427Z&X-Amz-Expires=86400&X-Amz-Signature=be56a0e5cef82076a6322bdd923de27efaef156e6dac715a231e06af4c2f637e&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Simulator%2520Screen%2520Shot%2520-%2520iPhone%252012%2520-%25202022-07-19%2520at%252023.09.49.png%22&x-id=GetObject" height="500"></img>

<p>Veja também um video do app em funcionamento:</p>

<a href="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/777cdbf7-74b1-45fa-95a2-3f2a7926f065/Gravao_de_Tela_2022-07-19_s_23.00.49.mov?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220720%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220720T023634Z&X-Amz-Expires=86400&X-Amz-Signature=98d4ef04228e6440a8c619dd0a78ff6b63a26f6d8176df96535e055598417ae4&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Grava%25C3%25A7%25C3%25A3o%2520de%2520Tela%25202022-07-19%2520%25C3%25A0s%252023.00.49.mov%22&x-id=GetObject" target="_blank">Clique aqui para ver o vídeo do app em funcionamento</a>





