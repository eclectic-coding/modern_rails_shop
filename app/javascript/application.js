// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import Bs5Utils from "bs5-utils";

// Configure toasting
Bs5Utils.defaults.toasts.position = 'top-center';
Bs5Utils.defaults.toasts.container = 'toast-container';
Bs5Utils.defaults.toasts.stacking = true;

// Make Bs5Utils & bootstrap globally available
window.Bs5Utils = Bs5Utils;
window.bootstrap = bootstrap;



