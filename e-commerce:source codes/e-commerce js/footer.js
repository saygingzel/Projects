const createFooter = () => {
  let footer = document.querySelector("footer");

  footer.innerHTML = `
    <div class="footer-content">
        <img src="img/helogo.png" class="logo" alt="">
        <div class="footer-ul-container">
            <ul class="category">
                <li class="category-title">Kategoriler</li>
                <li><a href="./erkek.html" class="footer-link">Erkek</a></li>
                <li><a href="./kadin.html" class="footer-link">Kadın</a></li>
                <li><a href="./tshirt.html" class="footer-link">t-shirts</a></li>
                <li><a href="./ceket.html" class="footer-link">Ceket&Mont</a></li>
                <li><a href="./sweatshirt.html" class="footer-link">sweatshirts</a></li>
                
                <li><a href="./pantolon.html" class="footer-link">Pantolon</a></li>
                <li><a href="./ayakkabi.html" class="footer-link">ayakkabı</a></li>
                <li><a href="./aksesuar.html" class="footer-link">Aksesuar</a></li>

                
               
                
            </ul>
           
        </div>
    </div>
    
    <div class="footer-social-container">
        <div>
            <a href="#" class="social-link">terms & services</a>
            <a href="#" class="social-link">privacy page</a>
        </div>
        <div>
            <a href="#" class="social-link">instagram</a>
            <a href="#" class="social-link">facebook</a>
            <a href="#" class="social-link">twitter</a>
        </div>
    </div>
    <p class="footer-credit">Undisputed, Best apparels online store</p>
    `;
};

createFooter();
