# FontAwesome Directory Structure

After extracting your FontAwesome Pro 6.7.2 download and copying files to the `fontawesome/` directory, 
your structure should look like this:

```
fontawesome/
├── css/
│   ├── all.css
│   ├── all.min.css                 # Main file - includes all styles
│   ├── brands.css
│   ├── brands.min.css              # Brand icons (GitHub, Twitter, etc.)
│   ├── duotone.css
│   ├── duotone.min.css             # Duotone style (Pro only)
│   ├── fontawesome.css
│   ├── fontawesome.min.css
│   ├── light.css
│   ├── light.min.css               # Light weight style (Pro only)
│   ├── regular.css
│   ├── regular.min.css             # Regular weight style (Pro only)
│   ├── solid.css
│   ├── solid.min.css               # Solid style (most common)
│   ├── svg-with-js.css
│   ├── svg-with-js.min.css
│   ├── thin.css
│   ├── thin.min.css                # Thin style (Pro only)
│   └── v4-shims.css
│       v4-shims.min.css
│
├── js/                              # Optional - only if you need JS version
│   ├── all.js
│   ├── all.min.js
│   ├── brands.js
│   ├── brands.min.js
│   ├── ...
│   └── v4-shims.min.js
│
├── webfonts/
│   ├── fa-brands-400.ttf
│   ├── fa-brands-400.woff2         # Brand icons font
│   ├── fa-duotone-900.ttf
│   ├── fa-duotone-900.woff2        # Duotone font (Pro only)
│   ├── fa-light-300.ttf
│   ├── fa-light-300.woff2          # Light font (Pro only)
│   ├── fa-regular-400.ttf
│   ├── fa-regular-400.woff2        # Regular font (Pro only)
│   ├── fa-solid-900.ttf
│   ├── fa-solid-900.woff2          # Solid font
│   ├── fa-thin-100.ttf
│   ├── fa-thin-100.woff2           # Thin font (Pro only)
│   └── ... (additional formats)
│
├── LICENSE.txt                      # FontAwesome Pro license
├── metadata/                        # Icon metadata (optional)
└── sprites/                         # SVG sprites (optional)
```

## Minimum Required Files

At minimum, you need:

1. **CSS files** in `fontawesome/css/`:
   - `all.min.css` (or specific styles like `solid.min.css`, `brands.min.css`)

2. **Font files** in `fontawesome/webfonts/`:
   - `fa-solid-900.woff2`
   - `fa-brands-400.woff2`
   - Other `.woff2` files for Pro styles (regular, light, thin, duotone)

## What Each Style Provides

- **Solid** (`fa-solid`): Filled/solid icons - comes with free version
- **Regular** (`fa-regular`): Outlined icons - Pro only
- **Light** (`fa-light`): Lighter weight icons - Pro only
- **Thin** (`fa-thin`): Thinnest weight icons - Pro only
- **Duotone** (`fa-duotone`): Two-tone colored icons - Pro only
- **Brands** (`fa-brands`): Brand/logo icons - available in free and Pro

## File Formats

- `.css` - Unminified CSS (for development)
- `.min.css` - Minified CSS (for production) ← **Use these**
- `.woff2` - Web font format (best browser support, smallest size) ← **Use these**
- `.woff` - Web font format (older browsers)
- `.ttf` - TrueType font (fallback)
- `.eot` - Embedded OpenType (IE9 support)
- `.svg` - SVG font (iOS legacy)

## Where to Get These Files

1. Log in to your FontAwesome account
2. Go to Downloads
3. Download "FontAwesome Pro 6.7.2 for Web"
4. Extract the archive
5. Copy the `css/` and `webfonts/` directories to your `fontawesome/` folder

## Verification

After copying, verify with:

```bash
ls -la fontawesome/css/
ls -la fontawesome/webfonts/
```

You should see the files listed above.
