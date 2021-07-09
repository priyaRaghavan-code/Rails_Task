// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require activestorage
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require tree .





// import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery"
import "@fortawesome/fontawesome-free/js/all";


// Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import flatpickr from "flatpickr"
require("flatpickr/dist/flatpickr.css")
require("packs/certification")
require("packs/education")
require("packs/experience")