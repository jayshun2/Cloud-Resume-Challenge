const counter = document.querySelector(".visits");

async function updateCounter() {
    let response = await fetch("#");
    let data = await response.json();
    counter.innerHTML = `${data.counter}`; // Assuming data contains a "counter" key
}

updateCounter();
