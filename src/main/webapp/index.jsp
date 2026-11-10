<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop — Friendly & Premium</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ---------- FRIENDLY ROOT ---------- */
    :root{
      --bg:#fefcf9;
      --card:#ffffff;
      --primary:#2d2d44;
      --primary-light:#3f3f5a;
      --accent:#e07a5f;
      --accent-light:#fce9e4;
      --accent-dark:#c05a3e;
      --muted:#6b6b7a;
      --muted-light:#a8a8b8;
      --surface:#f7f4f0;
      --success:#2a9d8f;
      --warning:#e9c46a;
      --radius:24px;
      --shadow:0 8px 30px rgba(45,45,68,.06);
      --shadow-hover:0 18px 50px rgba(45,45,68,.12);
      --transition:.3s cubic-bezier(.2,.9,.4,1);
    }
    *{box-sizing:border-box;margin:0;padding:0}
    html{scroll-behavior:smooth}
    body{font-family:'Inter',system-ui,sans-serif;background:var(--bg);color:var(--primary);line-height:1.6;-webkit-font-smoothing:antialiased}
    a{color:inherit;text-decoration:none}
    img{display:block;max-width:100%}
    button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit}
    .container{width:100%;max-width:1280px;margin:0 auto;padding:0 24px}

    /* ---------- BUTTONS ---------- */
    .btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:14px 32px;border-radius:100px;font-weight:600;font-size:15px;transition:var(--transition);border:2px solid transparent}
    .btn-primary{background:var(--accent);color:#fff;border-color:var(--accent);box-shadow:0 6px 18px rgba(224,122,95,.25)}
    .btn-primary:hover{background:var(--accent-dark);border-color:var(--accent-dark);transform:translateY(-3px);box-shadow:0 14px 28px rgba(224,122,95,.35)}
    .btn-secondary{background:var(--primary);color:#fff;border-color:var(--primary)}
    .btn-secondary:hover{background:var(--primary-light);border-color:var(--primary-light);transform:translateY(-3px)}
    .btn-ghost{background:rgba(255,255,255,.12);color:#fff;border-color:rgba(255,255,255,.30);backdrop-filter:blur(6px)}
    .btn-ghost:hover{background:rgba(255,255,255,.25);border-color:rgba(255,255,255,.50);transform:translateY(-3px)}

    /* ---------- HEADER ---------- */
    header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.88);backdrop-filter:blur(20px);-webkit-backdrop-filter:blur(20px);border-bottom:1px solid rgba(45,45,68,.04);box-shadow:0 4px 30px rgba(0,0,0,.02)}
    .header-inner{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:10px 0;min-height:76px;flex-wrap:wrap}
    .brand{display:flex;align-items:center;gap:10px;font-weight:800;font-size:24px;letter-spacing:-.6px;color:var(--primary)}
    .brand .accent{color:var(--accent)}
    .brand i{font-size:28px;color:var(--accent)}
    nav.main-nav ul{display:flex;gap:4px;list-style:none;align-items:center}
    nav.main-nav li a{display:flex;align-items:center;gap:7px;padding:10px 18px;border-radius:100px;font-weight:500;font-size:14px;color:var(--muted);transition:var(--transition)}
    nav.main-nav li a:hover,nav.main-nav li a.active{background:var(--surface);color:var(--primary)}
    .header-actions{display:flex;align-items:center;gap:4px}
    .icon-btn{width:46px;height:46px;display:grid;place-items:center;border-radius:50%;font-size:18px;color:var(--muted);transition:var(--transition);position:relative}
    .icon-btn:hover{background:var(--surface);color:var(--primary);transform:scale(1.04)}
    .cart-wrap{position:relative}
    .cart-count{position:absolute;top:-3px;right:-3px;background:var(--accent);color:#fff;font-size:11px;font-weight:700;width:22px;height:22px;border-radius:50%;display:grid;place-items:center;border:2.5px solid #fff;box-shadow:0 2px 8px rgba(224,122,95,.4)}
    .search-wrap{display:flex;align-items:center;background:var(--surface);border-radius:100px;padding:0 18px 0 20px;transition:var(--transition);border:2px solid transparent;min-width:240px}
    .search-wrap:focus-within{border-color:var(--accent);background:#fff;box-shadow:0 0 0 5px rgba(224,122,95,.10)}
    .search-wrap input{border:0;background:transparent;outline:none;width:100%;padding:12px 0;font-size:14px;color:var(--primary)}
    .search-wrap input::placeholder{color:var(--muted-light)}
    .search-wrap button{padding:10px 0 10px 12px;color:var(--muted);font-size:16px;transition:var(--transition)}
    .search-wrap button:hover{color:var(--accent)}
    .mobile-toggle{display:none;width:46px;height:46px;border-radius:50%;font-size:20px;background:var(--surface);color:var(--primary);transition:var(--transition)}
    .mobile-toggle:hover{background:var(--accent-light)}
    #mobileMenu{display:none;background:#fff;border-top:1px solid rgba(45,45,68,.04);padding:16px 0 24px;box-shadow:0 20px 30px rgba(0,0,0,.02)}
    #mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:4px}
    #mobileMenu ul li a{display:flex;align-items:center;gap:14px;padding:14px 20px;border-radius:100px;font-weight:500;color:var(--primary);transition:var(--transition)}
    #mobileMenu ul li a:hover{background:var(--surface)}
    #mobileMenu ul li a i{width:22px;color:var(--muted)}

    /* ---------- HERO ---------- */
    .hero{position:relative;display:flex;align-items:center;min-height:520px;padding:72px 0;border-radius:32px;overflow:hidden;margin:24px 24px 0;background:linear-gradient(145deg,#1e1e2f 0%,#2a2a42 100%);box-shadow:0 20px 50px rgba(45,45,68,.15)}
    .hero::before{content:'';position:absolute;inset:0;background:url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover no-repeat;opacity:.35;z-index:0}
    .hero .container{position:relative;z-index:1}
    .hero .badge{display:inline-block;background:rgba(224,122,95,.25);color:#fce9e4;padding:6px 20px;border-radius:100px;font-weight:600;font-size:13px;letter-spacing:.4px;margin-bottom:20px;backdrop-filter:blur(4px);border:1px solid rgba(224,122,95,.20)}
    .hero h1{font-family:'Playfair Display',serif;font-size:56px;font-weight:700;color:#fff;line-height:1.12;max-width:700px;margin-bottom:18px;text-shadow:0 4px 20px rgba(0,0,0,.15)}
    .hero p{color:rgba(255,255,255,.85);font-size:18px;max-width:540px;margin-bottom:32px;line-height:1.65}
    .hero .actions{display:flex;gap:14px;flex-wrap:wrap}

    /* ---------- SECTION ---------- */
    .section{padding:64px 0}
    .section-header{display:flex;align-items:flex-end;justify-content:space-between;gap:16px;margin-bottom:36px;flex-wrap:wrap}
    .section-header .title-group h2{font-size:32px;font-weight:700;letter-spacing:-.4px;color:var(--primary)}
    .section-header .title-group p{color:var(--muted);margin-top:5px;font-size:15px}
    .view-all{font-weight:600;color:var(--accent);display:flex;align-items:center;gap:8px;font-size:14px;transition:var(--transition);white-space:nowrap;padding:8px 0}
    .view-all:hover{gap:14px;color:var(--accent-dark)}

    /* ---------- CATEGORIES ---------- */
    .categories-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:16px}
    .cat-card{background:var(--card);border-radius:var(--radius);padding:28px 16px;text-align:center;box-shadow:var(--shadow);transition:var(--transition);cursor:pointer;border:2px solid transparent}
    .cat-card:hover{transform:translateY(-8px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
    .cat-card .icon-wrap{width:62px;height:62px;border-radius:20px;background:var(--accent-light);display:grid;place-items:center;margin:0 auto 14px;font-size:26px;color:var(--accent);transition:var(--transition)}
    .cat-card:hover .icon-wrap{background:var(--accent);color:#fff;transform:scale(1.04);box-shadow:0 8px 18px rgba(224,122,95,.25)}
    .cat-card h4{font-size:15px;font-weight:600}
    .cat-card .count{font-size:13px;color:var(--muted);margin-top:4px}

    /* ---------- PRODUCTS ---------- */
    .products-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:24px}
    .product-card{background:var(--card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow);transition:var(--transition);display:flex;flex-direction:column;border:2px solid transparent}
    .product-card:hover{transform:translateY(-8px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
    .product-card .img-wrap{position:relative;overflow:hidden;background:var(--surface);aspect-ratio:1/1}
    .product-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:var(--transition)}
    .product-card:hover .img-wrap img{transform:scale(1.06)}
    .product-card .badge{position:absolute;top:14px;left:14px;background:var(--accent);color:#fff;padding:5px 14px;border-radius:100px;font-size:11px;font-weight:700;letter-spacing:.4px;box-shadow:0 4px 12px rgba(224,122,95,.35)}
    .product-card .badge.sale{background:var(--warning);color:var(--primary);box-shadow:0 4px 12px rgba(233,196,106,.4)}
    .wish-btn{position:absolute;top:14px;right:14px;width:38px;height:38px;border-radius:50%;background:rgba(255,255,255,.92);display:grid;place-items:center;font-size:16px;color:var(--muted);transition:var(--transition);backdrop-filter:blur(6px);box-shadow:0 4px 12px rgba(0,0,0,.04)}
    .wish-btn:hover{background:#fff;color:var(--accent);transform:scale(1.12)}
    .product-card .body{padding:18px 20px 16px;flex:1;display:flex;flex-direction:column;gap:7px}
    .product-card .body .category-tag{font-size:11px;color:var(--muted-light);text-transform:uppercase;letter-spacing:.8px;font-weight:600}
    .product-card .body h5{font-size:16px;font-weight:600;line-height:1.35;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden}
    .price-row{display:flex;align-items:center;gap:10px;margin-top:6px}
    .price{font-weight:700;font-size:20px;color:var(--primary);letter-spacing:-.3px}
    .old-price{color:var(--muted-light);text-decoration:line-through;font-size:14px}
    .rating{display:flex;align-items:center;gap:4px;font-size:13px;color:#f5a623;margin-top:2px}
    .rating span{color:var(--muted);font-weight:400}
    .product-card .footer{padding:0 20px 20px;display:flex;gap:12px}
    .add-btn{flex:1;padding:12px;border-radius:12px;background:var(--primary);color:#fff;font-weight:600;font-size:14px;transition:var(--transition);display:flex;align-items:center;justify-content:center;gap:8px}
    .add-btn:hover{background:var(--accent);transform:scale(1.02);box-shadow:0 6px 18px rgba(224,122,95,.3)}
    .add-btn.added{background:var(--success)}

    /* ---------- DEAL ---------- */
    .deal-wrap{display:flex;background:var(--card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow);border:1px solid rgba(45,45,68,.02)}
    .deal-wrap .deal-img{flex:0 0 48%;background:var(--surface);min-height:340px}
    .deal-wrap .deal-img img{width:100%;height:100%;object-fit:cover}
    .deal-wrap .deal-content{flex:1;padding:44px 48px;display:flex;flex-direction:column;justify-content:center}
    .deal-wrap .tag{display:inline-block;background:var(--warning);color:var(--primary);padding:5px 16px;border-radius:100px;font-size:12px;font-weight:700;text-transform:uppercase;letter-spacing:.6px;align-self:flex-start;margin-bottom:16px;box-shadow:0 4px 12px rgba(233,196,106,.3)}
    .deal-wrap h3{font-size:32px;font-weight:700;margin-bottom:8px;letter-spacing:-.3px}
    .deal-wrap .desc{color:var(--muted);margin-bottom:20px;font-size:15px}
    .price-big{font-size:36px;font-weight:800;color:var(--primary);letter-spacing:-.5px}
    .price-big .old{font-size:20px;font-weight:400;color:var(--muted-light);text-decoration:line-through;margin-left:12px}
    .stock{font-size:14px;color:var(--muted);margin:6px 0 20px}
    .stock strong{color:var(--accent);font-weight:700}
    .timer-grid{display:flex;gap:14px;margin:20px 0 24px}
    .timer-box{background:var(--primary);color:#fff;padding:12px 18px;border-radius:14px;min-width:76px;text-align:center;box-shadow:0 6px 16px rgba(45,45,68,.15)}
    .timer-box .num{font-size:28px;font-weight:700;line-height:1.2;letter-spacing:.5px}
    .timer-box .label{font-size:11px;opacity:.7;text-transform:uppercase;letter-spacing:.8px;margin-top:2px}

    /* ---------- TESTIMONIALS ---------- */
    .testimonials-scroll{display:flex;gap:24px;overflow-x:auto;padding:8px 4px 20px;scroll-snap-type:x mandatory;-webkit-overflow-scrolling:touch}
    .testimonials-scroll::-webkit-scrollbar{height:5px}
    .testimonials-scroll::-webkit-scrollbar-thumb{background:var(--accent-light);border-radius:100px}
    .testimonial-card{flex:0 0 360px;background:var(--card);border-radius:var(--radius);padding:28px 30px;box-shadow:var(--shadow);scroll-snap-align:start;transition:var(--transition);border:1px solid rgba(45,45,68,.02)}
    .testimonial-card:hover{box-shadow:var(--shadow-hover);transform:translateY(-4px)}
    .testimonial-card .stars{color:#f5a623;font-size:18px;letter-spacing:3px;margin-bottom:14px}
    .testimonial-card blockquote{font-size:15px;line-height:1.65;color:var(--primary);margin-bottom:18px;font-style:italic}
    .testimonial-card .author{display:flex;align-items:center;gap:14px}
    .testimonial-card .avatar{width:48px;height:48px;border-radius:50%;object-fit:cover;background:var(--surface);border:2px solid var(--accent-light)}
    .testimonial-card .name{font-weight:600;font-size:15px}
    .testimonial-card .role{font-size:13px;color:var(--muted)}

    /* ---------- NEWSLETTER ---------- */
    .newsletter-wrap{background:linear-gradient(145deg,var(--primary) 0%,var(--primary-light) 100%);border-radius:28px;padding:56px 64px;color:#fff;display:flex;align-items:center;justify-content:space-between;gap:40px;flex-wrap:wrap;box-shadow:0 20px 50px rgba(45,45,68,.20)}
    .newsletter-wrap .text h3{font-size:30px;font-weight:700;margin-bottom:6px;letter-spacing:-.3px}
    .newsletter-wrap .text p{opacity:.75;font-size:16px}
    .newsletter-wrap form{display:flex;gap:12px;flex-wrap:wrap;flex:1;max-width:500px}
    .newsletter-wrap input{flex:1;min-width:220px;padding:16px 24px;border-radius:100px;border:0;font-size:15px;background:rgba(255,255,255,.12);color:#fff;transition:var(--transition);outline:2px solid transparent}
    .newsletter-wrap input::placeholder{color:rgba(255,255,255,.5)}
    .newsletter-wrap input:focus{outline-color:var(--accent);background:rgba(255,255,255,.2);box-shadow:0 0 0 4px rgba(224,122,95,.15)}
    #newsletterMsg{margin-top:14px;font-size:14px;width:100%;padding-left:8px;display:none}

    /* ---------- FOOTER ---------- */
    footer{margin-top:20px;padding:56px 0 36px;border-top:1px solid rgba(45,45,68,.03);background:rgba(255,255,255,.6);backdrop-filter:blur(10px)}
    .footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:48px;margin-bottom:40px}
    .footer-grid .brand-col p{color:var(--muted);font-size:14px;max-width:320px;line-height:1.7;margin-top:10px}
    .socials{display:flex;gap:12px;margin-top:18px}
    .socials a{width:44px;height:44px;border-radius:50%;background:var(--surface);display:grid;place-items:center;color:var(--muted);transition:var(--transition);font-size:17px}
    .socials a:hover{background:var(--accent);color:#fff;transform:translateY(-4px);box-shadow:0 8px 20px rgba(224,122,95,.25)}
    .footer-grid .col h5{font-weight:700;font-size:14px;margin-bottom:16px;letter-spacing:.3px}
    .footer-grid .col ul{list-style:none;display:flex;flex-direction:column;gap:8px}
    .footer-grid .col ul li a{color:var(--muted);font-size:14px;transition:var(--transition)}
    .footer-grid .col ul li a:hover{color:var(--accent)}
    .footer-bottom{text-align:center;padding-top:28px;border-top:1px solid rgba(45,45,68,.03);color:var(--muted-light);font-size:13px}

    /* ---------- RESPONSIVE ---------- */
    @media (max-width:1200px){
      .products-grid{grid-template-columns:repeat(3,1fr)}
      .categories-grid{grid-template-columns:repeat(3,1fr)}
      .footer-grid{grid-template-columns:1fr 1fr;gap:32px}
    }
    @media (max-width:992px){
      .hero h1{font-size:42px}
      .hero{min-height:420px;margin:20px 20px 0;padding:48px 0}
      .deal-wrap{flex-direction:column}
      .deal-wrap .deal-img{flex:0 0 260px}
      .deal-wrap .deal-content{padding:32px 34px}
      .newsletter-wrap{padding:40px 36px;flex-direction:column;text-align:center}
      .search-wrap{min-width:160px}
    }
    @media (max-width:768px){
      nav.main-nav{display:none}
      .mobile-toggle{display:grid;place-items:center}
      .products-grid{grid-template-columns:repeat(2,1fr);gap:16px}
      .categories-grid{grid-template-columns:repeat(2,1fr);gap:14px}
      .hero h1{font-size:32px}
      .hero p{font-size:16px}
      .section-header h2{font-size:24px}
      .deal-wrap h3{font-size:26px}
      .price-big{font-size:30px}
      .timer-box{min-width:60px;padding:10px 14px}
      .timer-box .num{font-size:22px}
      .footer-grid{grid-template-columns:1fr;gap:24px}
      .search-wrap{min-width:130px;padding:0 12px 0 16px}
      .search-wrap input{font-size:13px;padding:10px 0}
      .icon-btn{width:40px;height:40px;font-size:16px}
      .testimonial-card{flex:0 0 280px}
    }
    @media (max-width:480px){
      .hero{margin:10px 10px 0;min-height:300px;padding:28px 0;border-radius:20px}
      .hero h1{font-size:24px}
      .container{padding:0 14px}
      .deal-wrap .deal-content{padding:20px 18px}
      .deal-wrap .deal-img{flex:0 0 180px}
      .newsletter-wrap{padding:24px 18px}
      .newsletter-wrap .text h3{font-size:20px}
      .product-card .body{padding:12px 12px 8px}
      .product-card .body h5{font-size:13px}
      .price{font-size:15px}
      .product-card .footer{padding:0 12px 12px}
      .add-btn{font-size:12px;padding:8px}
      .timer-box{min-width:46px;padding:6px 8px}
      .timer-box .num{font-size:16px}
      .cat-card{padding:16px 10px}
      .cat-card .icon-wrap{width:44px;height:44px;font-size:18px}
      .cat-card h4{font-size:13px}
    }
  </style>
</head>
<body>

<!-- ===== HEADER ===== -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>
    <nav class="main-nav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="hero" aria-label="Hero banner">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
      <h1>Discover Premium <br>Essentials</h1>
      <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories" aria-labelledby="cat-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="cat-title">Browse Categories</h2>
          <p>Find exactly what you're looking for</p>
        </div>
        <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section" id="products" aria-labelledby="prod-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="prod-title">Trending Now</h2>
          <p>What's hot — popular picks from our community</p>
        </div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- DEAL -->
  <section class="section" id="deals" aria-labelledby="deals-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="deals-title">⚡ Flash Deal</h2>
          <p>Grab it before it's gone — limited stock</p>
        </div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <span class="price-big">$999 <span class="old">$1,199</span></span>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section" id="testimonials" aria-labelledby="test-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="test-title">What Our Customers Say</h2>
          <p>Real reviews from real people</p>
        </div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3>Stay in the Loop</h3>
          <p>Get exclusive offers, early access & new arrivals</p>
        </div>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail
