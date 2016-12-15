[![Build Status](https://travis-ci.org/hinok/spejson.svg?branch=master)](https://travis-ci.org/hinok/spejson)

# Spejson

Responsive spacing mixins and utility classes written in Sass.

```html
<div class="component">
  Hello world!
</div>
```

```scss
@import 'spejson';

.component {
  // Set paddings:
  //   viewport <  600px:  30px
  //   viewport >= 600px:  37.5px
  //   viewport >= 900px:  45px
  //   viewport >= 1200px: 52.5px
  //   viewport >= 1800px: 60px
  @include spacing-padding(lg);
}
```

Will generate

```css
.component {
    padding-top: 30px !important;
    padding-right: 30px !important;
    padding-bottom: 30px !important;
    padding-left: 30px !important;
}

@media screen and (min-width: 600px) {
    .component {
        padding-top: 37.5px !important;
    }
}

@media screen and (min-width: 900px) {
    .component {
        padding-top: 45px !important;
    }
}

@media screen and (min-width: 1200px) {
    .component {
        padding-top: 52.5px !important;
    }
}

@media screen and (min-width: 1800px) {
    .component {
        padding-top: 60px !important;
    }
}

@media screen and (min-width: 600px) {
    .component {
        padding-right: 37.5px !important;
    }
}

@media screen and (min-width: 900px) {
    .component {
        padding-right: 45px !important;
    }
}

@media screen and (min-width: 1200px) {
    .component {
        padding-right: 52.5px !important;
    }
}

@media screen and (min-width: 1800px) {
    .component {
        padding-right: 60px !important;
    }
}

@media screen and (min-width: 600px) {
    .component {
        padding-bottom: 37.5px !important;
    }
}

@media screen and (min-width: 900px) {
    .component {
        padding-bottom: 45px !important;
    }
}

@media screen and (min-width: 1200px) {
    .component {
        padding-bottom: 52.5px !important;
    }
}

@media screen and (min-width: 1800px) {
    .component {
        padding-bottom: 60px !important;
    }
}

@media screen and (min-width: 600px) {
    .component {
        padding-left: 37.5px !important;
    }
}

@media screen and (min-width: 900px) {
    .component {
        padding-left: 45px !important;
    }
}

@media screen and (min-width: 1200px) {
    .component {
        padding-left: 52.5px !important;
    }
}

@media screen and (min-width: 1800px) {
    .component {
        padding-left: 60px !important;
    }
}
```

Don't worry about number of generated `@media`. You can easily optimize code by
by merging `@media` with  [clean-css](https://github.com/jakubpawlowicz/clean-css#how-to-use-clean-css-api) (look at `mediaMerging`) or a [postcss](https://github.com/postcss/postcss) plugin.

## API

### Variables

You can easily customise `spejson` by overriding variables. You can change almost
everything. Look at default configration with explanation.

```scss
// Prefix is used for generate-spacing-* mixins
$spacing-prefix: 'u-' !default;

// Adjust sizes to your project. If you need only 2 sizes, e.g.
// [small, big] - you can set them below
$spacing-sizes: (
  xs: 5px,
  sm: 10px,
  md: 15px,
  lg: 30px,
  xl: 50px,
) !default;

// Names for breakpoints corresponds to names in $spacing-scales
// Names can be changed
$spacing-bp: (
  'tablet-portrait': 600px, // feel free to use here em based media queries
  'tablet-landscape': 900px,
  'desktop': 1200px,
  'big-desktop': 1800px,
) !default;

$spacing-scales: (
  'phone': 1, // this name cannot be changed and must be defined
  'tablet-portrait': 1.25,
  'tablet-landscape': 1.5,
  'desktop': 1.75,
  'big-desktop': 2,
) !default;
```

### Integration mixins

**Variable**

`$size-name` *{string}* - one of `xs`, `sm`, `md`, `lg`, `xl`.

**Margin**

#### `@include spacing-margin-top($size-name);`
#### `@include spacing-margin-right($size-name);`
#### `@include spacing-margin-bottom($size-name);`
#### `@include spacing-margin-left($size-name);`

**Padding**

#### `@include spacing-padding-top($size-name);`
#### `@include spacing-padding-right($size-name);`
#### `@include spacing-padding-bottom($size-name);`
#### `@include spacing-padding-left($size-name);`

**All**

#### `@include spacing-margin($size-name);`
#### `@include spacing-padding($size-name);`

### Generation mixins

#### `@include generate-spacing-center;`

Generates utility `.u-mc` class for easy horizontal centering.

#### `@include generate-spacing-reset;`

Generates utility classes that reset margins and paddings.

```scss
// Margins
.u-mt-0
.u-mr-0
.u-mb-0
.u-ml-0

// Paddings
.u-pt-0
.u-pr-0
.u-pb-0
.u-pl-0
```

#### `@include generate-spacing-margin;`

Generates responsive utility classes that set margins.

```scss
// xs
.u-mt-xs
.u-mr-xs
.u-mb-xs
.u-ml-xs

// sm
.u-mt-sm
.u-mr-sm
.u-mb-sm
.u-ml-sm

// md
.u-mt-md
.u-mr-md
.u-mb-md
.u-ml-md

// lg
.u-mt-lg
.u-mr-lg
.u-mb-lg
.u-ml-lg

// xl
.u-mt-xl
.u-mr-xl
.u-mb-xl
.u-ml-xl
```

#### `@include generate-spacing-padding;`

Generates responsive utility classes that set paddings.

```scss
// xs
.u-pt-xs
.u-pr-xs
.u-pb-xs
.u-pl-xs

// sm
.u-pt-sm
.u-pr-sm
.u-pb-sm
.u-pl-sm

// md
.u-pt-md
.u-pr-md
.u-pb-md
.u-pl-md

// lg
.u-pt-lg
.u-pr-lg
.u-pb-lg
.u-pl-lg

// xl
.u-pt-xl
.u-pr-xl
.u-pb-xl
.u-pl-xl
```

## License

MIT
