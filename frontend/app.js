const inputNombre = document.getElementById('nombre');
const btnBuscar = document.getElementById('btnBuscar');
const resultado = document.getElementById('resultado');

async function buscarPokemon() {
  const nombre = inputNombre.value.trim().toLowerCase();

  if (!nombre) {
    resultado.innerHTML = '<p class="error">Escribe el nombre de un pokémon.</p>';
    return;
  }

  resultado.innerHTML = '<p>Cargando...</p>';

  try {
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);
    const data = await response.json();

    const tipos = data.types.map(t => t.type.name).join(', ');
    const pesoKg = (data.weight / 10).toFixed(1);   // hectogramos -> kg
    const alturaM = (data.height / 10).toFixed(1);  // decímetros -> metros

    resultado.innerHTML = `
      <h2>${data.name}</h2>
      <img src="${data.sprites.front_default}" alt="${data.name}">
      <p><strong>Tipos:</strong> ${tipos}</p>
      <p><strong>Peso:</strong> ${pesoKg} kg</p>
      <p><strong>Altura:</strong> ${alturaM} m</p>
    `;
  } catch (error) {
    resultado.innerHTML = '<p class="error">No se pudo conectar. Intenta de nuevo.</p>';
  }
}

btnBuscar.addEventListener('click', buscarPokemon);
inputNombre.addEventListener('keydown', e => { if (e.key === 'Enter') buscarPokemon(); });