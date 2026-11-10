<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium · Friendly</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== PREMIUM ROOT VARIABLES ========== */
        :root {
            --bg: #fcfaf8;
            --bg-card: #ffffff;
            --primary: #1e1e2f;
            --primary-light: #32324a;
            --accent: #e07a5f;
            --accent-light: #fae6e0;
            --accent-dark: #c05a3e;
            --muted: #6e6e7e;
            --muted-light: #a5a5b5;
            --surface: #f5f3f0;
            --success: #2a9d8f;
            --warning: #e9c46a;
            --radius: 20px;
            --radius-sm: 12px;
            --shadow: 0 8px 30px rgba(26, 26, 46, 0.05);
            --shadow-hover: 0 18px 50px rgba(26, 26, 46, 0.10);
            --transition: 0.3s cubic-bezier(0.2, 0.9, 0.4, 1);
            --container: 1280px;
        }

        /* ========== RESET & BASE ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.55;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ========== UTILITIES ========== */
        .muted {
            color: var(--muted);
        }
        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
        }

        /* ========== PREMIUM BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 14px 32px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: 2px solid transparent;
            letter-spacing: 0.2px;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            box-shadow: 0 6px 18px rgba(224, 122, 95, 0.25);
        }
        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-3px);
            box-shadow: 0 14px 28px rgba(224, 122, 95, 0.35);
        }
        .btn-secondary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .btn-secondary:hover {
            background: var(--primary-light);
            border-color: var(--primary-light);
            transform: translateY(-3px);
            box-shadow: 0 12px 28px rgba(26, 26, 46, 0.20);
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.30);
            backdrop-filter: blur(6px);
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.25);
            border-color: rgba(255, 255, 255, 0.50);
            transform: translateY(-3px);
        }
        .btn-sm {
            padding: 10px 22px;
            font-size: 13px;
        }

        /* ========== HEADER (premium glass) ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(26, 26, 46, 0.03);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.02);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
            min-height: 76px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 24px;
            letter-spacing: -0.6px;
            color: var(--primary);
            flex-shrink: 0;
        }
        .brand .accent {
            color: var(--accent);
        }
        .brand i {
            font-size: 28px;
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 10px 18px;
            border-radius: 100px;
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--surface);
            color: var(--primary);
            box-shadow: inset 0 0 0 1px rgba(26, 26, 46, 0.03);
        }
        nav.main-nav li a i {
            font-size: 15px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 4px;
            flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 46px;
            height: 46px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
            transform: scale(1.04);
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -3px;
            right: -3px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2.5px solid #fff;
            box-shadow: 0 2px 8px rgba(224, 122, 95, 0.4);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 100px;
            padding: 0 18px 0 20px;
            transition: var(--transition);
            border: 2px solid transparent;
            min-width: 240px;
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 5px rgba(224, 122, 95, 0.10);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 12px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder {
            color: var(--muted-light);
        }
        .search-wrap button {
            padding: 10px 0 10px 12px;
            color: var(--muted);
            font-size: 16px;
            transition: var(--transition);
        }
        .search-wrap button:hover {
            color: var(--accent);
        }

        .mobile-toggle {
            display: none;
            width: 46px;
            height: 46px;
            border-radius: 50%;
            font-size: 20px;
            background: var(--surface);
            color: var(--primary);
            transition: var(--transition);
        }
        .mobile-toggle:hover {
            background: var(--accent-light);
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(26, 26, 46, 0.04);
            padding: 16px 0 24px;
            box-shadow: 0 20px 30px rgba(0, 0, 0, 0.02);
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 14px 20px;
            border-radius: 100px;
            font-weight: 500;
            color: var(--primary);
            transition: var(--transition);
        }
        #mobileMenu ul li a:hover {
            background: var(--surface);
        }
        #mobileMenu ul li a i {
            width: 22px;
            color: var(--muted);
        }

        /* ========== HERO — premium & friendly ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 520px;
            padding: 72px 0;
            border-radius: 32px;
            overflow: hidden;
            margin: 24px 28px 0;
            background: linear-gradient(145deg, #1b1b2e 0%, #2a2a42 100%);
            box-shadow: 0 20px 50px rgba(26, 26, 46, 0.15);
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover no-repeat;
            opacity: 0.30;
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(224, 122, 95, 0.20);
            color: #f8c9bb;
            padding: 6px 20px;
            border-radius: 100px;
            font-weight: 600;
            font-size: 13px;
            letter-spacing: 0.4px;
            margin-bottom: 20px;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(224, 122, 95, 0.15);
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 56px;
            font-weight: 700;
            color: #fff;
            line-height: 1.12;
            max-width: 700px;
            margin-bottom: 18px;
            text-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        }
        .hero p {
            color: rgba(255, 255, 255, 0.82);
            font-size: 18px;
            max-width: 540px;
            margin-bottom: 32px;
            line-height: 1.65;
        }
        .hero .actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ========== SECTION ========== */
        .section {
            padding: 64px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 36px;
            flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.4px;
            color: var(--primary);
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 5px;
            font-size: 15px;
        }
        .section-header .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 14px;
            transition: var(--transition);
            white-space: nowrap;
            padding: 8px 0;
        }
        .section-header .view-all:hover {
            gap: 14px;
            color: var(--accent-dark);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 16px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
            position: relative;
            overflow: hidden;
        }
        .cat-card::after {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(circle at 30% 20%, rgba(224, 122, 95, 0.04), transparent 70%);
            pointer-events: none;
        }
        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .cat-card .icon-wrap {
            width: 62px;
            height: 62px;
            border-radius: 20px;
            background: var(--accent-light);
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 26px;
            color: var(--accent);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
            transform: scale(1.04);
            box-shadow: 0 8px 18px rgba(224, 122, 95, 0.25);
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
            margin-top: 4px;
        }

        /* ========== PRODUCTS — premium cards ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 2px solid transparent;
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.06);
        }
        .product-card .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--accent);
            color: #fff;
            padding: 5px 14px;
            border-radius: 100px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.4px;
            box-shadow: 0 4px 12px rgba(224, 122, 95, 0.35);
        }
        .product-card .badge.sale {
            background: var(--warning);
            color: var(--primary);
            box-shadow: 0 4px 12px rgba(233, 196, 106, 0.4);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.92);
            display: grid;
            place-items: center;
            font-size: 16px;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(6px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.04);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: var(--accent);
            transform: scale(1.12);
        }
        .product-card .body {
            padding: 18px 20px 16px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 7px;
        }
        .product-card .body .category-tag {
            font-size: 11px;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.8px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 16px;
            font-weight: 600;
            line-height: 1.35;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 6px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 20px;
            color: var(--primary);
            letter-spacing: -0.3px;
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 13px;
            color: #f5a623;
            margin-top: 2px;
        }
        .product-card .body .rating span {
            color: var(--muted);
            font-weight: 400;
        }
        .product-card .footer {
            padding: 0 20px 20px;
            display: flex;
            gap: 12px;
        }
        .product-card .footer .add-btn {
            flex: 1;
            padding: 12px;
            border-radius: 12px;
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            letter-spacing: 0.2px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
            box-shadow: 0 6px 18px rgba(224, 122, 95, 0.3);
        }
        .product-card .footer .add-btn.added {
            background: var(--success);
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            border: 1px solid rgba(26, 26, 46, 0.02);
        }
        .deal-wrap .deal-img {
            flex: 0 0 48%;
            background: var(--surface);
            min-height: 340px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 44px 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-block;
            background: var(--warning);
            color: var(--primary);
            padding: 5px 16px;
            border-radius: 100px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.6px;
            align-self: flex-start;
            margin-bottom: 16px;
            box-shadow: 0 4px 12px rgba(233, 196, 106, 0.3);
        }
        .deal-wrap .deal-content h3 {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
            letter-spacing: -0.3px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 20px;
            font-size: 15px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 36px;
            font-weight: 800;
            color: var(--primary);
            letter-spacing: -0.5px;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 12px;
            letter-spacing: 0;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: var(--muted);
            margin: 6px 0 20px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent);
            font-weight: 700;
        }

        .timer-grid {
            display: flex;
            gap: 14px;
            margin: 20px 0 24px;
        }
        .timer-box {
            background: var(--primary);
            color: #fff;
            padding: 12px 18px;
            border-radius: 14px;
            min-width: 76px;
            text-align: center;
            box-shadow: 0 6px 16px rgba(26, 26, 46, 0.15);
        }
        .timer-box .num {
            font-size: 28px;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: 0.5px;
        }
        .timer-box .label {
            font-size: 11px;
            opacity: 0.70;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            margin-top: 2px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 5px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-light);
            border-radius: 100px;
        }
        .testimonial-card {
            flex: 0 0 360px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 30px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
            border: 1px solid rgba(26, 26, 46, 0.02);
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
            transform: translateY(-4px);
        }
        .testimonial-card .stars {
            color: #f5a623;
            font-size: 18px;
            letter-spacing: 3px;
            margin-bottom: 14px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.65;
            color: var(--primary);
            margin-bottom: 18px;
            font-style: italic;
            quotes: "“" "”";
        }
        .testimonial-card blockquote::before {
            content: "“";
            font-size: 28px;
            font-family: 'Playfair Display', serif;
            color: var(--accent-light);
            line-height: 0;
            vertical-align: -8px;
            margin-right: 2px;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 14px;
        }
        .testimonial-card .author .avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
            border: 2px solid var(--accent-light);
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 15px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(145deg, var(--primary) 0%, var(--primary-light) 100%);
            border-radius: 28px;
            padding: 56px 64px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            flex-wrap: wrap;
            box-shadow: 0 20px 50px rgba(26, 26, 46, 0.20);
            border: 1px solid rgba(255, 255, 255, 0.06);
        }
        .newsletter-wrap .text h3 {
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 6px;
            letter-spacing: -0.3px;
        }
        .newsletter-wrap .text p {
            opacity: 0.75;
            font-size: 16px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 500px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 220px;
            padding: 16px 24px;
            border-radius: 100px;
            border: 0;
            font-size: 15px;
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            transition: var(--transition);
            outline: 2px solid transparent;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }
        .newsletter-wrap form input:focus {
            outline-color: var(--accent);
            background: rgba(255, 255, 255, 0.20);
            box-shadow: 0 0 0 4px rgba(224, 122, 95, 0.15);
        }
        .newsletter-wrap form .btn {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            padding: 16px 36px;
            box-shadow: 0 6px 20px rgba(224, 122, 95, 0.35);
        }
        .newsletter-wrap form .btn:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-2px);
        }
        #newsletterMsg {
            margin-top: 14px;
            font-size: 14px;
            opacity: 0.9;
            width: 100%;
            padding-left: 8px;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 20px;
            padding: 56px 0 36px;
            border-top: 1px solid rgba(26, 26, 46, 0.03);
            background: rgba(255, 255, 255, 0.6);
            backdrop-filter: blur(10px);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 40px;
        }
        .footer-grid .brand-col .brand {
            font-size: 22px;
            margin-bottom: 10px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 14px;
            max-width: 320px;
            line-height: 1.7;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 12px;
            margin-top: 18px;
        }
        .footer-grid .brand-col .socials a {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 17px;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent);
            color: #fff;
            transform: translateY(-4px);
            box-shadow: 0 8px 20px rgba(224, 122, 95, 0.25);
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 16px;
            color: var(--primary);
            letter-spacing: 0.3px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent);
        }
        .footer-bottom {
            text-align: center;
            padding-top: 28px;
            border-top: 1px solid rgba(26, 26, 46, 0.03);
            color: var(--muted-light);
            font-size: 13px;
        }

        /* ========== RESPONSIVE (premium scaling) ========== */
        @media (max-width: 1200px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 32px;
            }
        }

        @media (max-width: 992px) {
            .hero h1 {
                font-size: 42px;
            }
            .hero {
                min-height: 420px;
                margin: 20px 20px 0;
                padding: 48px 0;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 260px;
            }
            .deal-wrap .deal-content {
                padding: 32px 34px;
            }
            .newsletter-wrap {
                padding: 40px 36px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .search-wrap {
                min-width: 160px;
            }
        }

        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 16px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .hero h1 {
                font-size: 32px;
            }
            .hero p {
                font-size: 16px;
            }
            .section-header h2 {
                font-size: 24px;
            }
            .deal-wrap .deal-content h3 {
                font-size: 26px;
            }
            .deal-wrap .deal-content .price-big {
                font-size: 30px;
            }
            .timer-box {
                min-width: 60px;
                padding: 10px 14px;
            }
            .timer-box .num {
                font-size: 22px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 24px;
            }
            .header-inner {
                flex-wrap: nowrap;
            }
            .brand {
                font-size: 20px;
            }
            .brand i {
                font-size: 22px;
            }
            .search-wrap {
                min-width: 130px;
                padding: 0 12px 0 16px;
            }
            .search-wrap input {
                font-size: 13px;
                padding: 10px 0;
            }
            .header-actions .icon-btn {
                width: 40px;
                height: 40px;
                font-size: 16px;
            }
            .cart-count {
                width: 20px;
                height: 20px;
                font-size: 10px;
            }
            .testimonial-card {
               
