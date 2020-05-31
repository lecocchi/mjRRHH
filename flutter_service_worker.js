'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "0429ea61b305394d779d8cd1d4b9a6cf",
"assets/fonts/yugothic.ttf": "e587ff1ab1a23fdeee65c351de5ffde4",
"assets/fonts/AL_LePORSCHE_PersonalUseOnly.ttf": "09c9532c411b734bc0185d7f2c19353b",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "deb00e1046a823441c74e2280cdcd4c7",
"assets/LICENSE": "20d6507647521dce0873c89babc17254",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "51d23d1c30deda6f34673e0d5600fd38",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "d51b09f7b8345b41dd3b2201f653c62b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "0ea892e09437fcaa050b2b15c53173b7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/assets/talents.jpg": "4499a5332fcf613119c8764c26393edd",
"assets/assets/client_nasa.png": "b5ab69c34327083abd5cbb163ef3e0de",
"assets/assets/background.jpg": "29620517d49b03f221f0b9455a3d6dd1",
"assets/assets/principles.jpg": "ae8bd21ab916b7b76fd551deb5840187",
"assets/assets/instagram.png": "bac7daf9549d160d8d5a37621f97fa64",
"assets/assets/consulting.jpg": "52c5b4cf4a277c71c40426a82ed2c412",
"assets/assets/client_vn.png": "f9ceaaf51d8fc0a42f31a8286ce4fed5",
"assets/assets/facebook.png": "d9b3207bc99623dd76d272f2f479fb15",
"assets/assets/we.jpg": "9dc04d666b4548e272451c2793e2d7df",
"assets/assets/clientes.png": "4a5593a7c22c84a052f2b52673cb0edc",
"assets/assets/client_argontech.png": "bafc04a31d26cf508779b7546160c0bd",
"assets/assets/evaluacion.png": "ddad87f4cb3697242c1b74ab9be0409d",
"assets/assets/background_clean.jpg": "12b4bec76040a060b744e6995bbaa32f",
"assets/assets/logo.jpg": "ee7657660f827f0a492db1f6dcf9b820",
"assets/assets/logo.png": "8a963f5379b6c613c00386e060791f35",
"assets/assets/client_habitat.png": "238e82ba7291acbacccd01b751f70184",
"assets/assets/talentos.png": "eeee3f9afe520188d1c30c1fc9e9e052",
"assets/assets/contact.png": "84ca71375e5b4c9d10ab722c18fc1ed8",
"assets/assets/gmail.png": "b4cec0175adc5e90a8e7c54ee17baf1e",
"assets/assets/client_onep.png": "6bff53169828fc5060fe541383c974ce",
"assets/assets/evaluation.jpg": "69a32f3fd3e914f91eb794fc217968b5",
"assets/assets/consultoria.png": "ab60d175f9716c7cea168fda3c2704df",
"assets/assets/contact.jpg": "56906a1fb513d929f6a5ed67272f314f",
"assets/assets/client_naranja.png": "18be5926f49bbc8976f2293107e7062b",
"assets/assets/whatsapp.png": "81f9842aa3f3882c3a1d072a026e83cb",
"assets/AssetManifest.json": "8ac8f55292a7437c6b29ff2dc3167fe7",
"manifest.json": "376518b1d2c980ac76966cbc1072775d",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "4bbeb265adbc4d1ca011029035829a45",
"/": "4bbeb265adbc4d1ca011029035829a45"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
