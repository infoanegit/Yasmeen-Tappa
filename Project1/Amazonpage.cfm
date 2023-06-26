<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!---<ink href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">--->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Amazon</title>
    <!--css file-->
    <link rel="stylesheet" href="style1.css" />

    <!--font awesome-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
        integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!---<cfoutput>
        <script>
            alert("Email Already Exist!");
        </script>
    </cfoutput>--->
</head>

<body>

    <header class="header">
        <div class="container container-header">
            <div class="logo-container border-white">
                <div class="logo"></div>
                <span class="dotin">.in</span>
            </div>

            <div class="address-container border-white">
                <p class="hello">Hello</p>
                <div class="icon-address">
                    <i class="fa-solid fa-location-dot icon-location"></i>
                    <p>Select your address</p>
                </div>
            </div>

            <div class="search-container">
                <select class="search-select">
                    <option>All</option>
                </select>
                <input type="text" class="search-input" />
                <div class="search-icon">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>

            </div>

            <div class="language-container border-white">
                <p>English</p>
                <div class="lauguge-image">
                    <img
                        src="https://media.istockphoto.com/vectors/vector-flag-of-the-republic-of-india-proportion-23-the-national-flag-vector-id1051236720?k=20&m=1051236720&s=612x612&w=0&h=ATObRTHmTosADa9zaB2dQPn_VAQmG1XYH2x92kzc304=" />
                </div>
            </div>

            <div class="login-container border-white">
                <p>Hello</p>
                <button type="submit" ><a  href="http://127.0.0.1:8500/project1/EmployeeForm.cfm">sign in</a></button>
                <button type="submit" ><a  href="http://127.0.0.1:8500/project1/index.cfm">Login</a></button>
                <p class="account">Account & Lists</p>
            </div>

            <div class="return-order-container">
                <p>Returns
                <div class="order">& Orders</div>
                </p>
            </div>

            <div class="cart-container-right border-white">
                <i class="fa-solid fa-cart-shopping"></i>
                Cart
            </div>
        </div>
    </header>

    <!--navigation-->
    <nav class="nav">
        <div class=" container-nav">
            <ul>
                <li class="border-white" id="open-nav-sidebar">
                    <span class="open-nav-slider">
                        <i class="fa-solid fa-bars"></i>
                        All
                    </span>
                </li>
                <li class="border-white"><a href="#">Amazon miniTV</a></li>
                <li class="border-white"><a href="#">Best Sellers</a></li>
                <li class="border-white"><a href="#">Mobiles</a></li>
                <li class="border-white"><a href="#">Today's Deals</a></li>
                <li class="border-white"><a href="#">Customer Service</a></li>
                <li class="border-white"><a href="#">New Releases</a></li>
                <li class="border-white"><a href="#">Electronics</a></li>
                <li class="border-white"><a href="#">Prime</a>
                  <div class="prime-image">
                        <img
                            src="https://m.media-amazon.com/images/G/31/prime/NavFlyout/TryPrime/2018/Apr/IN-Prime-PIN-TryPrime-MultiBen-Apr18-400x400._CB442254244_.jpg" />
                    </div>
                </li>
                <li class="border-white"><a href="#">Home & Kitchen</a></li>
                <li class="border-white"><a href="#">Amazon Pay</a></li>
                <li class="border-white"><a href="#">Fashion</a></li>
                <li class="border-white"><a href="#">Computers</a></li>
                <li class="border-white prime-image-hover">
            </ul>
            <div class="nav-right-image-amazon-prime">
                <img
                    src="https://m.media-amazon.com/images/G/31/img17/Home/AmazonTV/Ravina/Desktop/Watch-Entertainment-for-FREE_400-x39._CB605460886_.jpg" />
            </div>
        </div>
    </nav>

<!--Item container-->
   <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="text-center">
                <h4>Lenovo IdeaPad 3 11th Gen Intel Core i3 15.6" FHD Thin & Light Laptop(8GB/512GB SSD/Windows 11/Office 2021/2Yr Warranty/3months Xbox Game Pass/Platinum Grey/1.7Kg), 81X800N2IN</h4>
                </div>
            </div>
        </div>   
                 
        <div class="row">      
            <div class="col-sm-2">
                <table>
                    <tr>
                        <th>
                            <img src="https://m.media-amazon.com/images/I/41YhZ897D9L._SS40_.jpg"/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <img src="	https://m.media-amazon.com/images/I/51dmoefH82L.SS40_BG85,85,85_BR-120_PKdp-play-icon-overlay__.jpg"/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <img src="https://m.media-amazon.com/images/I/51QmYrZouDL._SS40_.jpg"/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <img src="	https://m.media-amazon.com/images/I/41-Ex60pSIL._SS40_.jpg"/>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <img src="	https://m.media-amazon.com/images/I/51gr3ViXmaL._SS40_.jpg"/>
                        </th>
                    </tr>
                </table>
            </div>   
            <div class="col-sm-5">
                <img src="https://m.media-amazon.com/images/I/51zpgm+jczL._SX522_.jpg" />
            </div>    
            <div class="col-sm-3">
                <table>
                    <tr><td>Brand: Lenovo   537 ratings | 131 answered questions<hr></td></tr>
                    <tr><td> 36% ₹38,190
                            M.R.P.: ₹59,890
                            Inclusive of all taxes
                            EMI starts at ₹1,825. No Cost EMI available EMI options<hr>
                    </td></tr>
                    <tr><td>  
                            Offers
                            No Cost EMI
                            Upto ₹1,719.65 EMI interest savings on Amazon Pay ICICI Bank Credit Cards, Amazon Pay LaterUpto ₹1,719.65 EMI interest savings on Amazon Pay ICICI…
                            2 offers
                            Bank Offer
                            Upto ₹1,500.00 discount on select Credit Cards, HDFC Bank Debit CardsUpto ₹1,500.00 discount on select Credit Cards, HDFC…
                            7 offers
                            Partner Offers
                            Free Spotify Premium subscription on purchase of Laptops, Smart Watches & Tablets products worth atleast ₹1,000Free Spotify Premium subscription on pu…
                            3 offers<hr></td></tr>
                </table>
            </div>
            <div class="col-sm-2">  
                <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">With Exchange
                                                    Up to    9,900.00 off</h5>
                            <p class="card-text">In stock
                                Sold by Appario Retail Private Ltd and Fulfilled by Amazon.
                                Include
                                Add a Protection Plan:
                                Lenovo Branded 1 Year Accidental Damage Protection with Onsite Service for ₹1,349.00
                                Lenovo Branded 1 Year Additional Warranty Extension with Onsite Service for ₹3,099.00
                                1 Year Extended Warranty for ₹1,049.00.</p>
                        
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                               Sold by Appario Retail Private Ltd and Fulfilled by Amazon.
                            </label>
                        </div>
                        </div> 
                    </div>
                </div>    
            </div>  
    </div>    
        
</body>
</html>
