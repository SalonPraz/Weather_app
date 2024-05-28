/*
*Student Name: Salon Prajapati
*Student ID: 240898530369
*/
const btn=document.querySelector(".searchBar button")
const int=document.querySelector(".searchBar input")
document.querySelector(".error").style.display="none"
const currentDate = new Date();
const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
const month = months[currentDate.getMonth()]; 
const day = String(currentDate.getDate()).padStart(2, '0');
const year = currentDate.getFullYear(); 
const formattedDate = `${month}-${day}-${year}`;

//default city display
weather("nizamabad")
async function weather(city){
    if (navigator.onLine) {
    //fetching data from api
    uri=`main.php?city=${city}`
    let data1=await fetch(uri)
    let data= await data1.json()
    if (data.main.cod>=400 && data.main.cod<500) {
        //Error code
        dommanipulationonerror()
    }
    else{
        localdata=getfromlocalstorage(city)
        if (localdata!==false) {
            if (localdata.main.date!==formattedDate) {
                saveinlocalstorage(data,city)
            }
        } else {
            saveinlocalstorage(data,city)
        }
        dommanipulationoncorrect(data)
        }
    }else{
        localdata=getfromlocalstorage(city)
        console.log(localdata)
        if (localdata!==false) {
            dommanipulationoncorrect(localdata)
        } else {
            dommanipulationonerror()
        }
    }
}
function dommanipulationonerror(){
        document.querySelector(".error").style.display="contents"
        document.querySelector(".information").style.visibility="hidden"
        document.querySelector(".additionalInformation").style.visibility="hidden"
        int.value=""
        document.querySelector(".result").style.height="50vh"
}
function dommanipulationoncorrect(data){
    //code for weather details
    document.querySelector(".result").style.height="50vh"
    document.querySelector(".city").innerHTML=`${data.main.city_name}`;
    document.querySelector(".temp").innerText=Math.round(data.main.temperature)+"°C";
    document.querySelector(".condition").innerText=data.main.conditions.toUpperCase();
    document.querySelector(".pressure").innerText=`${data.main.pressure} PA`;
    document.querySelector(".humidity").innerText=`${data.main.humidity}%`;
    document.querySelector(".windSpeed").innerText=`${data.main.wind_speed}km/h`;
    document.querySelector("#tempImg").src=data.main.icon
    document.body.style.visibility="visible"
    int.value=""
    document.querySelector(".information").style.visibility="visible"
    document.querySelector(".additionalInformation").style.visibility="visible"
    document.querySelector(".error").style.display="none"
    document.querySelector(".date").innerText=data.main.date
}
function saveinlocalstorage(data,city){
    key_name=city.toLowerCase()
    localStorage.setItem(key_name,JSON.stringify(data))
}
function getfromlocalstorage(city){
    key_name=city.toLowerCase()
    data=localStorage.getItem(key_name)
    if (data!==null) {
        data1=JSON.parse(data)
        return data1;
    } else {
        return false
    }
}
pastdata("nizamabad")
async function pastdata(city){
    if(navigator.onLine){
        uri=`main.php?city=${city}`
        let data1=await fetch(uri)
        let data= await data1.json()
        makehtml(data)
    }
    else{
        data=getfromlocalstorage(city)
        makehtml(data1)
    }
    
}
function makehtml(data){
    data.past.forEach(element => {
        let div=document.createElement('div')
        div.className="data"
        let div2=document.createElement('div')
        div2.className="cont"
        let p1=document.createElement('p')
        p1.className="dates"
        p1.textContent=getDayName(element.day)+","+element.date
        let p2=document.createElement('p')
        p2.className="citys"
        p2.textContent=element.city_name
        let p3=document.createElement('p')
        p3.className="temps"
        p3.textContent=Math.round(element.temperature)+"°C"
        let p4=document.createElement('p')
        p4.className="conditions"
        p4.textContent=element.conditions
        let img1=document.createElement('img')
        img1.className="tempImgs"
        img1.src=element.icon
        let p5=document.createElement('p')
        p5.className="pressures"
        p5.textContent=element.pressure+"PA"
        let p6=document.createElement('p')
        p6.className="humiditys"
        p6.textContent=element.humidity+"%"
        let p7=document.createElement('p')
        p7.className="windSpeeds"
        p7.textContent=element.wind_speed+"Km/h"
        document.querySelector(".sevendays").appendChild(div)
        div.appendChild(p1)
        div.appendChild(p2)
        div2.appendChild(img1)
        div2.appendChild(p3)
        div.appendChild(div2)
        div.appendChild(p4)
        div.appendChild(p5)
        div.appendChild(p6)
        div.appendChild(p7)
    });
}
function getDayName(dayNumber) {
    const daysOfWeek = [ "",'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun'];
    return daysOfWeek[dayNumber];
  }
//button click code
btn.addEventListener("click",()=>{
    if (int.value==="") {
        weather("nizamabad")
    }
    else{
        weather(int.value)
    }
})
//Button keydown code
int.addEventListener("keypress",(event)=>{
    if(event.key==="Enter"){
        if (int.value==="") {
            weather("nizamabad")
        }
        else{
            weather(int.value)
        }
    }
})