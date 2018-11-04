console.log('JS Loaded.');

sessionStorage.SessionName = "RCFLabSessionData";
var nightmode = false;

var nightmode_initial = sessionStorage.getItem('nightmode');

window.onload = function(){
    
    if(nightmode_initial && nightmode_initial === 'True'){
        nightmode = true;
        document.documentElement.classList.add('dark');
    }

    document.getElementById("night-mode").onclick = function(){
        console.log('Night mode.');
        toggleNightMode();
    };

};

function toggleNightMode(){
    console.log('Toggling night mode.');
    if(nightmode){
        document.documentElement.classList.remove('dark');
        sessionStorage.setItem("nightmode","False");
        nightmode = false;
        console.log(nightmode_initial);
    }else{
        document.documentElement.classList.add('dark');
        sessionStorage.setItem("nightmode","True");
        nightmode = true;
    }
    
}