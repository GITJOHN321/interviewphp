const headquarter = document.getElementById('headquarters')
headquarter.addEventListener('change', getSports)

const sport = document.getElementById('sports')
sport.addEventListener('change', getAthletes)

const athlete = document.getElementById('athletes')

function fetchAndSetData(url, formData, targetElement){
    return fetch(url, {
        method: "POST",
        body: formData,
        mode: 'cors'
    }).then(response => response.json()).then(data => {
        targetElement.innerHTML = data
    }).catch(err => console.log(err))
}

function getSports(){
    let headquarter_data= headquarter.value
    let url = 'controllers/sports.controller.php'
    let formData = new FormData()

    formData.append('id', headquarter_data)

    fetchAndSetData(url,formData, sport).then(()  => {
        athlete.innerHTML = ''
        athlete.innerHTML = "<option value=''>Seleccionar</option>"
    }).catch(err => console.log(err))
}

function getAthletes(){
    let sport_data= sport.value
    let url = 'controllers/athletes.controller.php'
    let formData = new FormData()

    formData.append('id', sport_data)

    fetchAndSetData(url,formData, athlete)
}