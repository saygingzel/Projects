const createNav = () => {
  let nav = document.querySelector(".navbar");

  nav.innerHTML = `
        <div class="nav">
            <img src="./img/helogo.png" class="brand-logo" alt="">
            <div class="nav-items">
                <div class="search">
                    <input id="searchbar"  type="text" class="search-box" placeholder="Ürün, Marka Ara ">
                    <button class="search-btn">Ara</button>
                </div>
                <a href="#"><img src="img/user.png" alt=""></a>
                <a href="#"><img src="img/carts.png" alt=""></a>
            </div>
        </div>
        <ul class="links-container">
            <li class="link-item"><a href="./index.html" class="link">Anasayfa</a></li>
            <li class="link-item"><a href="./kadin.html" class="link">Kadın</a></li>
            <li class="link-item"><a href="./erkek.html" class="link">Erkek</a></li>
            <li class="link-item"><a href="./sweatshirt.html" class="link">sweatshirt</a></li>
            <li class="link-item"><a href="./tshirt.html" class="link">t-shirt</a></li>
            <li class="link-item"><a href="./pantolon.html" class="link">Pantolon</a></li>
            <li class="link-item"><a href="./ceket.html" class="link">Ceket&Mont</a></li>
            <li class="link-item"><a href="./aksesuar.html" class="link">Aksesuar</a></li>
            <li class="link-item"><a href="./ayakkabi.html" class="link">Ayakkabı</a></li>
        </ul>
    `;
};

createNav();
