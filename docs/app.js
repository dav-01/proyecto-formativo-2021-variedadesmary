addEventListener('DOMContentLoaded', () => {
    const btn_menu = document.querySelector('.btn_menu')
    if (btn_menu){
        btn_menu.addEventListener('click', () => {
            const lista = document.querySelector('.lista')
            lista.classList.toggle('show')
        })
    }
})