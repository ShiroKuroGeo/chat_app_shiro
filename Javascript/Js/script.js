let input1 = document.querySelector("#input1");
let input2 = document.querySelector("#input2");
let button = document.querySelector("#button");
// click.addEventListener("click",function(){

//     alert(parseInt(input1.value) + parseInt(input2.value));
// });

function add(){
    alert(parseInt(input1.value) + parseInt(input2.value));
}

function subtract(){
    alert(parseInt(input1.value) - parseInt(input2.value));
}

function multiplication(){
    alert(parseInt(input1.value) * parseInt(input2.value));
}

function division(){
    alert(parseInt(input1.value) / parseInt(input2.value));
}

function modulo(){
    alert(parseInt(input1.value) % parseInt(input2.value));
}

function greaterorless(){
    if(parseInt(input1.value) > parseInt(input2.value)){
        alert(parseInt(input1.value) + " is greater than" + parseInt(input2.value));
    }
    else if(parseInt(input1.value) < parseInt(input2.value)){
        alert(parseInt(input1.value) + " is lesser than " + parseInt(input2.value));
    }
    else{
        alert(parseInt(input1.value) + "is equal to " + parseInt(input2.value));
    }
}
