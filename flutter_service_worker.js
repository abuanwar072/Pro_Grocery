'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"manifest.json": "23d1bee7cfd6cc0bb15ce638b98cd3e4",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"version.json": "bb54c8feacd0c4a26f0e0542fc61d08c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "2ceeeaaf17d4a43a0f5955928cbc361d",
"/": "2ceeeaaf17d4a43a0f5955928cbc361d",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/FontManifest.json": "d0975c94afeb32ec4155750ce2543f5e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/flutter_credit_card/font/halter.ttf": "4e081134892cd40793ffe67fdc3bed4e",
"assets/packages/flutter_credit_card/icons/rupay.png": "a10fbeeae8d386ee3623e6160133b8a8",
"assets/packages/flutter_credit_card/icons/chip.png": "5728d5ac34dbb1feac78ebfded493d69",
"assets/packages/flutter_credit_card/icons/unionpay.png": "87176915b4abdb3fcc138d23e4c8a58a",
"assets/packages/flutter_credit_card/icons/hipercard.png": "921660ec64a89da50a7c82e89d56bac9",
"assets/packages/flutter_credit_card/icons/visa.png": "f6301ad368219611958eff9bb815abfe",
"assets/packages/flutter_credit_card/icons/discover.png": "62ea19837dd4902e0ae26249afe36f94",
"assets/packages/flutter_credit_card/icons/elo.png": "ffd639816704b9f20b73815590c67791",
"assets/packages/flutter_credit_card/icons/mastercard.png": "7e386dc6c169e7164bd6f88bffb733c7",
"assets/packages/flutter_credit_card/icons/amex.png": "f75cabd609ccde52dfc6eef7b515c547",
"assets/NOTICES": "61e64a755626308a2db470f9001d917c",
"assets/AssetManifest.json": "95b7e0dfd262bbd797b9a889f1985e46",
"assets/AssetManifest.bin.json": "cfd672758d818f9a52659ec88e2100ae",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/assets/icons/right.svg": "5b6a64076dee494174f067426a5fb0b9",
"assets/assets/icons/menu.svg": "6d09260c38f6d968485056bb29dd930a",
"assets/assets/icons/save.svg": "a5f1cc99967e12a578cd2d54177e4a66",
"assets/assets/icons/profile_payment.svg": "96660eec017866dfd4049964127f1b24",
"assets/assets/icons/home_profile.svg": "eab2cd1d42aa6de1f3dca8f20fa19140",
"assets/assets/icons/arrow_backward.svg": "e8846bba9774f34d074bc2c771e8cd0d",
"assets/assets/icons/paypal.svg": "12e2386003aeae0b375b278109f6ee00",
"assets/assets/icons/apple_icon.svg": "e8dee3317068b27ba26540f9f0862853",
"assets/assets/icons/delete_outline.svg": "e3234ac86ad50d6f2fae00ca49a7083b",
"assets/assets/icons/order_delivered.svg": "76a2229ef91b8a027e0c3a5b8c46faa1",
"assets/assets/icons/order_confirm.svg": "2258324a3e5efd505dc093b7201c6350",
"assets/assets/icons/google_icon_rounded.svg": "75d2238640a7bb0e93a01423f80f00de",
"assets/assets/icons/search.svg": "8239fc584078250e37f3d54aa69ce991",
"assets/assets/icons/delete.svg": "69ca6355ec527812a326d63b313261c7",
"assets/assets/icons/card_add.svg": "a189da8d395b0ceb8123d4fa7d605cdd",
"assets/assets/icons/eye.svg": "014abe87a34555cdddf721687da0ce57",
"assets/assets/icons/profile_notification.svg": "cc48c2469ec7b18bd19c3d27ebed67d5",
"assets/assets/icons/order_shipped.svg": "48c4ef65458f65ed78c2ed248c180148",
"assets/assets/icons/add.svg": "1edb44f81c2a4413fe6b78a84387ea9c",
"assets/assets/icons/filter.svg": "f39d8f5d350d7862255758a4fbe5f0f1",
"assets/assets/icons/truck_icon.svg": "8267f35cdf49c852bc70d6d4ff8bd88a",
"assets/assets/icons/heart_active.svg": "c2581d74204cd837d382f1c8a25b18c8",
"assets/assets/icons/home.svg": "6783cbc0e2c1f452d3775caf57702a0c",
"assets/assets/icons/profile.svg": "cb6994ca09f25e96b7a1dfbb6b9d628c",
"assets/assets/icons/heart.svg": "811f00ba884cb50f989e6e27d8ad51c9",
"assets/assets/icons/voucher.svg": "8ba55ac77105afce92f4ec17b16f788c",
"assets/assets/icons/contact_phone.svg": "2202807fa3bfca29adf426df0860972f",
"assets/assets/icons/contact_email.svg": "15f74574d6a6acb86114f9fe3b25346e",
"assets/assets/icons/reply.svg": "381400cc81036bd96e7b8192afa7a1a3",
"assets/assets/icons/profile_person.svg": "62839c738f1401122527ac920a193860",
"assets/assets/icons/location.svg": "452e062df1929d052689b05a7668ca64",
"assets/assets/icons/master_card.svg": "a3c030a9a89d76036afbf64b8817eae8",
"assets/assets/icons/search_tile_arrow.svg": "238c3df920e3453a69e161fdd8532c0e",
"assets/assets/icons/heart_outlined.svg": "89a97327519120ba1290ecd6b0cc9238",
"assets/assets/icons/shopping_bag.svg": "0b81a5f5ddaaeb113756dc816d1f1f2a",
"assets/assets/icons/side_bar_icon.svg": "2347c44a0b6dfb7ac7afdd653fcbc2c2",
"assets/assets/icons/shopping_cart.svg": "8336d0aca400d00a8c6b856f5c8270a6",
"assets/assets/icons/dashboard_icon.svg": "2347c44a0b6dfb7ac7afdd653fcbc2c2",
"assets/assets/icons/apple_icon_rounded.svg": "d25e756da8591c12328228e4fe6afbc0",
"assets/assets/icons/add_rounded.svg": "b4ab8c15c908b6ec9c02eff9e28ec718",
"assets/assets/icons/contact_map.svg": "146dd7cb01135b4750570084f8d59b55",
"assets/assets/icons/add_quantity.svg": "df0ddb475aea58d62e9358a287eb1254",
"assets/assets/icons/profile_logout.svg": "ae6c72a30b6656e6e517d9cd41cad518",
"assets/assets/icons/facebook_icon.svg": "685028c79a53bc2d72f2db537d441a23",
"assets/assets/icons/google_icon.svg": "7f7e7e56dea74284dfaf09f4b8b9c1d0",
"assets/assets/icons/order_processing.svg": "3e6cde65bd15c5b32ddcd1d83efcdc85",
"assets/assets/icons/cash_on_delivery.svg": "2306a3e54caa2343e58a0f9813d472c3",
"assets/assets/icons/twitter_icon.svg": "3aad2d36092b1e83ee806116165380ae",
"assets/assets/icons/cart.svg": "91bed9f6c2dc78ddd46772ac1fc28969",
"assets/assets/icons/arrow_forward.svg": "47b29a0f26ddffd2c2468ffc7a5e45d5",
"assets/assets/icons/remove_quantity.svg": "5d28b3624f667d089110251d370f5eb2",
"assets/assets/icons/profile_setting.svg": "19f724a3aab0eb0f6d4d3cd994105d83",
"assets/assets/icons/edit.svg": "67aff3a40ab3bbab129579a725f0e876",
"assets/assets/images/coupon_background_3.png": "6eed001634be342b24ec7824d213eb90",
"assets/assets/images/coupon_background_2.png": "c4866a447bc2c99a0b1f137470c9f9b9",
"assets/assets/images/app_logo_splash.png": "c84f5db4ece0577b9d891b9c276d7c21",
"assets/assets/images/profile_page_background.png": "380b0ace0ec17056b0c8c2c0da2ce728",
"assets/assets/images/coupon_background_4.png": "773a2a460e0bdbddf2515182552510da",
"assets/assets/images/app_logo.png": "7e206b47abee4ce3dd5d3cab885416d8",
"assets/assets/images/app_logo.svg": "a9fb729d226e1c917dbe732bcf56d575",
"assets/assets/images/coupon_background_1.png": "5fc02c56cb10e7c2c6e80e2a8b386843",
"assets/AssetManifest.bin": "69d3985ad084f076a5991f1576d750fd",
"assets/fonts/MaterialIcons-Regular.otf": "514ff9a6f27ed5ffb655416df4f76caf",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"main.dart.js": "6d62ba294256e3c967f8d78f9d10dcc9"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
