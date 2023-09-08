'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "d0a95d1611927b670b1dd90b5369df48",
"assets/AssetManifest.json": "0a26ae839f0b28b92d9a2d5b987e2626",
"assets/assets/audio/10u.mp3": "fb82c9d43cb795e1ed10462089f4d23d",
"assets/assets/audio/11u.mp3": "0c4ef3d4c0d5d17a6f12f34eec25c315",
"assets/assets/audio/12u.mp3": "368d45b906147993c53869bb4a49aa36",
"assets/assets/audio/1u.mp3": "86db294cb2968758e4664403e8961f13",
"assets/assets/audio/2u.mp3": "594ad9f237101973190ce3fefb328401",
"assets/assets/audio/3u.mp3": "039805d8a488df6f1ca4d6c987992b8b",
"assets/assets/audio/4u.mp3": "09c4c4d230081922053d6ccad661e518",
"assets/assets/audio/5u.mp3": "c32368ce2c74d1bb8e5fc5820abf8097",
"assets/assets/audio/6u.mp3": "eaefc29bf0d68e57ef604f90da7a1e40",
"assets/assets/audio/7u.mp3": "35b25d47228e87abe596b46f43e151ea",
"assets/assets/audio/8u.mp3": "9ce4af6dcb6430dc78637b576ffd66f6",
"assets/assets/audio/9u.mp3": "4bd87b90e077bb0d74277de38dbed985",
"assets/assets/audio/aa.mp3": "15f5b96a4e85c0dd569ff4e2a55e7df7",
"assets/assets/audio/m1.mp3": "0eddcb111fba23f34d1a3a76d4e50920",
"assets/assets/audio/m10.mp3": "744947b265915f3c00d6d9ccc2499b78",
"assets/assets/audio/m11.mp3": "385f151de9b7aa75aa245bac5e30da2e",
"assets/assets/audio/m12.mp3": "a55a925829e51df1f9325618eea5cdd3",
"assets/assets/audio/m13.mp3": "c9657e3df593f1222ef2ad8b7b53bbba",
"assets/assets/audio/m14.mp3": "a973e570c4a06b53dc3e0783e327bd1f",
"assets/assets/audio/m15.mp3": "0a3a076e134a4435fb85ba9a0b144c23",
"assets/assets/audio/m16.mp3": "5549b82ca74a1c77e154f3fc8a82117a",
"assets/assets/audio/m17.mp3": "10d863455a66c48064bb5bcc018f8a21",
"assets/assets/audio/m18.mp3": "fe6f7f35d186d60b029d27038a1d1949",
"assets/assets/audio/m2.mp3": "7c39c52eb5ec81ded4f064b2598ee464",
"assets/assets/audio/m3.mp3": "d482366f9acd70ede5e4c2fe13d2643d",
"assets/assets/audio/m4.mp3": "4259a44558a3438203d2071a2f8c1c9c",
"assets/assets/audio/m5.mp3": "587e2cc3647a76a27f0f07088e698212",
"assets/assets/audio/m6.mp3": "74ae535c91983d099c7e42bdf7666854",
"assets/assets/audio/m7.mp3": "2338ea7f83825144f24bf23f2dff036a",
"assets/assets/audio/m8.mp3": "5d47ef7edf11800091cc0dda7e5fae57",
"assets/assets/audio/m9.mp3": "dc801e880ccb639ca598146482e5013b",
"assets/assets/images/1.gif": "280b3a4a98ed96c92d7d185967fe8231",
"assets/assets/images/aud.gif": "5b947a2a7d6816032d49b60d8b3ed130",
"assets/assets/images/introtamil.gif": "582c04a3e48845ae7b0ac82b68806566",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "52ac02ba6270eb4ce75c9adcd65b2cdc",
"assets/NOTICES": "646df46990637ccbdc61488919683f01",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/wakelock_web/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "dd133990239ea99ae67b4638ce144b52",
"/": "dd133990239ea99ae67b4638ce144b52",
"main.dart.js": "f5a72b5f367f43416bc6423b1bcc5882",
"manifest.json": "67d1554a4dd345b3012527e48484e955",
"version.json": "6fccfa98f60e843b512a803892afeda2"};
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
