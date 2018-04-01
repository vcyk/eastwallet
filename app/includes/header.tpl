<!DOCTYPE html>
<html lang="en" ng-app="mewApp">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>East Web Wallet</title>
<meta property="og:title" content="East Wallet: Your Key to Eastcoin">
<meta property="og:site_name" content="East Wallet: Your Key to Eastcoin">
<meta name="twitter:title" content="East Wallet: Your Key to Eastcoin">
<meta name="apple-mobile-web-app-title" content="East Wallet: Your Key to Eastcoin">
<link href="https://wallet.easthub.io" rel="canonical">
<meta content="https://wallet.easthub.io" property="og:url">
<meta content="https://wallet.easthub.io" name="twitter:url">
<link rel="stylesheet" href="css/eastwallet-master.min.css">
<script type="text/javascript" src="js/eastwallet-static.min.js"></script>
<script type="text/javascript" src="js/eastwallet-master.js"></script>
<meta name="description" content="EastWallet is a free, open-source, client-side interface for generating Eastcoin wallets & more. Interact with the Eastcoin blockchain easily & securely.">
<meta property="og:description"  content="Free, open-source, client-side Eastcoin wallet. Enabling you to interact with the blockchain easily & securely.">
<meta name="twitter:description" content="Free, open-source, client-side Eastcoin wallet. Enabling you to interact with the blockchain easily & securely.">
<meta name="robots" content="index,follow">
<meta name="googlebot" content="index,follow">
<link href="images/fav/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
<link href="images/fav/favicon-32x32.png" rel="icon" type="image/png" sizes="32x32">
<link href="images/fav/favicon-16x16.png" rel="icon" type="image/png" sizes="16x16">
<link href="images/fav/manifest.json" rel="manifest">
<link href="images/fav/safari-pinned-tab.svg" rel="mask-icon" color="#2f99b0">
<link href="images/fav/favicon.ico" rel="shortcut icon">
<meta name="apple-mobile-web-app-title" content="EastWallet &middot; Your Key to Eastcoin">
<meta name="application-name" content="EastWallet">
<meta name="msapplication-config" content="images/fav/browserconfig.xml">
<meta name="theme-color" content="#1d6986">
<meta name="apple-mobile-web-app-status-bar-style" content="#1d6986">
<meta property="og:url" content="https://wallet.easthub.io" />
<meta property="og:title" content="East Wallet  &middot; Your Key to Eastcoin" />
<meta property="og:type" content="website">
<meta property="og:image" content="/images/eastwallet-logo-banner.png" />
<meta property="og:image" content="/images/eastwallet-logo.png" />
<meta property="og:image" content="/images/eastwallet-logo-square.png" />
<script type="application/ld+json">
{
"@context": "http://schema.org",
"@type" : "Organization",
"name" : "EastWallet",
"legalName" : "East Coin",
"url" : "https://wallet.easthub.io/",
"contactPoint" : [{
  "@type" : "ContactPoint",
  "url"   : "https://wallet.easthub.io",
  "contactType" : "customer service"
}],
"logo" : "https://wallet.easthub.io/images/eastwallet-logo.png",
"description": "East Wallet is a free, open-source, client-side interface for generating Eastcoin wallets &amp; more. Interact with the Eastcoin blockchain easily &amp; securely.",
"sameAs" : [
  "http://www.easthub.io/",
  "https://explorer.easthub.io/",
  "https://wallet.easthub.io/",
  "https://node.easthub.io/",
  "https://pool.easthub.io/",
  "https://myetherwallet.github.io/knowledge-base/",
  "https://github.com/east-coin/eastwallet", "https://github.com/east-coin/"
]
}
</script>
</head>
<body>

<header class="{{curNode.name}} {{curNode.service}} {{curNode.service}} nav-index-{{gService.currentTab}}" aria-label="header" ng-controller='tabsCtrl' >

@@if (site === 'mew' ) {
  <div class="small announcement annoucement-danger">
    <div class="container">
      Join the East Coin Crowdsale NOW!
      <br />
      1. Register your account on <a href="http://www.easthub.io"> Easthub Homepage </a>
      <span class="hidden-xs">
        &nbsp;&nbsp;&nbsp;&nbsp;
        2. Send your ethereum to the following address and you will be participated in the crowdsale!
      </span>
    </div>
  </div>
}

<section class="bg-gradient header-branding">
  <section class="container">
    @@if (site === 'mew' ) {
      <a class="brand" href="/" aria-label="Go to homepage">
        <img src="images/eastwallet-logo.png"  height="64px" alt="EastWallet" />
      </a>
    }
    @@if (site === 'cx'  ) {
      <a class="brand" href="/cx-wallet.html" aria-label="Go to homepage">
        <img src="images/eastwallet-logo.png" height="64px" alt="EastWallet" />
      </a>
    }
    <div class="tagline">

    <span class="dropdown dropdown-gas" ng-cloak>
      <a tabindex="0" aria-haspopup="true" aria-label="adjust gas price" class="dropdown-toggle  btn btn-white" ng-click="dropdownGasPrice = !dropdownGasPrice">
        <span translate="OFFLINE_Step2_Label_3">Gas Price</span>:
          {{gas.value}} Gwei
          <i class="caret"></i>
      </a>
      <ul class="dropdown-menu" ng-show="dropdownGasPrice">
        <div class="header--gas">
          <span translate="OFFLINE_Step2_Label_3">Gas Price</span>:
          {{gas.value}} Gwei
          <input type="range" ng-model="gas.value" min="{{gas.min}}" max="{{gas.max}}" step="{{gas.step}}" ng-change="gasChanged()"/>
          <p class="small col-xs-4 text-left"> <!--translate="GAS_Price_1"-->
            Really, really slow
          </p>
          <p class="small col-xs-4 text-center"> <!--translate="GAS_Price_2"-->
            Maybe Fast?
          </p>
          <p class="small col-xs-4 text-right"> <!--translate="GAS_Price_3"-->
            Fast
          </p>
          <br />
          <p class="small" style="white-space:normal;font-weight:300;margin: 2rem 0 0;" translate="GAS_PRICE_Desc"></p>
          <a class="small"
             translate="x_ReadMore"
             href="https://myetherwallet.github.io/knowledge-base/gas/what-is-gas-ethereum.html"
             target="_blank"
             rel="noopener noreferrer"></a>
        </div>
      </ul>
    </span>

    </div>
  </section>
</section>

<nav role="navigation" aria-label="main navigation" class="container nav-container overflowing" >
  <a aria-hidden="true" ng-show="showLeftArrow" class="nav-arrow-left" ng-click="scrollLeft(100);" ng-mouseover="scrollHoverIn(true,2);" ng-mouseleave="scrollHoverOut()">&#171;</a>
  <div class="nav-scroll">
    <ul class="nav-inner">
      @@if (site === 'mew' ) {
      <li ng-repeat="tab in tabNames track by $index" \
          class="nav-item {{tab.name}}" \
          ng-class="{active: $index==gService.currentTab}"
          ng-show="tab.mew"
          ng-click="tabClick($index)">
            <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a>
      </li>
      }
      @@if (site === 'cx' ) {
      <li ng-repeat="tab in tabNames track by $index" \
          class="nav-item {{tab.name}}" \
          ng-class="{active: $index==gService.currentTab}"
          ng-show="tab.cx"
          ng-click="tabClick($index)">
            <a tabindex="0" aria-label="nav item: {{tab.name | translate}}" translate="{{tab.name}}"></a>
      </li>
      }
      <li class="nav-item help">
        <a href="https://myetherwallet.github.io/knowledge-base/" target="_blank" rel="noopener noreferrer">
          <span translate="NAV_Help">
            Help
          </span>
        </a>
      </li>
      <li class="nav-item help">
        <a href="http://www.easthub.io/" target="_blank" rel="noopener noreferrer">
          <span translate="NAV_Crowdsale">
            Join the Crowdsale Now
          </span>
        </a>
      </li>
    </ul>
  </div>
  <a aria-hidden="true"
     ng-show="showRightArrow"
     class="nav-arrow-right"
     ng-click="scrollRight(100);"
     ng-mouseover="scrollHoverIn(false,2);"
     ng-mouseleave="scrollHoverOut()">&#187;</a>
</nav>

@@if (site === 'mew' ) { @@include( './header-node-modal.tpl', { "site": "mew" } ) }
@@if (site === 'cx'  ) { @@include( './header-node-modal.tpl', { "site": "cx"  } ) }

</header>
