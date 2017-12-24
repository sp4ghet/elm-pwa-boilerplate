'use strict';

require('./style.scss');
var Elm = require('../src/App.elm');
var mountNode = document.getElementById('main');

var app = Elm.App.embed(mountNode);

require('offline-plugin/runtime').install();
