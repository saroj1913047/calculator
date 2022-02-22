document.addEventListener("DOMContentLoaded", function(event) {
    let screen = document.querySelector('#screen');

    let clear = document.querySelector('#clear');
    let delete_single_num = document.querySelector('#delete_single_num');

    let Normal_btn = document.querySelectorAll('#Normal_btn');


    Normal_btn.forEach((Normal_btn, index)=>{
        Normal_btn.addEventListener('click', function(){
            let text = this.innerHTML;
            screen.value += text;
        });
    });


    /*clear all number*/
    clear.addEventListener('click', function(){
        screen.value = "";
    });

    /*delete single number*/
    delete_single_num.addEventListener('click', function(){
        screen.value = screen.value.substring(0,screen.value.length-1);
    });

});