let form;

const messageProvider = document.getElementById("warning");



const isNumber = value => /^[+-]?([0-9]*[.])?[0-9]+$/.test(value)
const validateForm = ({x, y, r}) => {
    if (!isNumber(x)) {
        messageProvider.innerHTML = "Wrong x value"
        return false
    }
    if (!isNumber(y)) {
        messageProvider.innerHTML = "Y not a value"
        return false
    }
    if (!isNumber(r)) {
        messageProvider.innerHTML = "Wrong r value"
        return false
    }
    if (y < -3 || 5 < y) {
        messageProvider.innerHTML = "Y not in [-3, 5]"
        return false
    }
    if (r <= 0) {
        messageProvider.innerHTML = "R is not positive"
        return false
    }
    messageProvider.innerHTML = " "
    return true
}

function saveValues(id) {
    console.log(id);
    if (id === undefined) {
        const y = document.getElementById("y").value;
        localStorage.setItem("y", y);
        return;
    } else {
        const elem = document.getElementById(id).value;
        localStorage.setItem(id[0], elem);
    }
    console.log("Values saved in cookies!");
}



window.onload = () => {
    form = document.getElementById('form');

    const x = localStorage.getItem('x');
    const y = localStorage.getItem('y');
    const r = localStorage.getItem('r');

    if (x) {
        form.elements.x.value = x;
    }
    if (y) {
        form.elements.y.value = y;
    }
    if (r) {
        form.elements.r.value = r;
    }

    form.onsubmit = async (e) => {

        e.preventDefault();
        const x = form.elements.x.value;
        const y = form.elements.y.value;
        const r = form.elements.r.value;

        if(!validateForm({x,y,r})){
            return;
        }


        let data = new URLSearchParams({
            x: x,
            y: y,
            R: r
        })

        let options = {
            method: 'POST',
            body: data,
        }
        fetch("control", options).then(response => {
            if (!response.ok) {
                throw new Error('Ошибка HTTP ' + response.status);
            }
            return response.text();
        })
            .then(data => {
                document.querySelector('html').innerHTML = data;
                updateJS()

            })
            .catch(error => {
                console.error('Произошла ошибка:', error);
            });

    }
};
