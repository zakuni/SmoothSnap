# SmoothSnap

## About SmoothSnap
http://www.pitecan.com/SmoothSnap/

## Dependencies
* jQuery
* jQueryUI(Slider Widget)

## Usage

```javascript
// Basic Usage
$("#yourslider").slider().smoothsnap();

// Set Option
$("#yourslider").slider().smoothsnap({snapTo: [2, 10, 20, 40]});

// Or you can snap to Element(not implemented yet)
$("#yourslider").slider().smoothsnap({snapTo: ["h2", "h1"]});
```

## Demo
http://ozawakun.io/static/smoothsnap/sample.html
