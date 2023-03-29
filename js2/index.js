// SELECTEURS
//document.querySelector("h4").style.background = "yellow"; pas pratique!

//click event:
const questionContainer = document.querySelector(".click-event");
questionContainer.addEventListener("click",() => {
questionContainer.style.background = "red";
questionContainer.style.border = "3px solid teal";
});


