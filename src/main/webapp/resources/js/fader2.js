//const axios = require('axios'); Test

//var URL = "http://192.168.43.87:8080/c4l_server/rest/";
var URL = "http://192.168.178.104:8080/c4l_server/rest/";

var URLSET = URL+"set/";
var URLGET = URL+"get/"


var app = new Vue({
  
    el: "#app",
    data: {
      channels:[
// {'lum': 0, 'channel': '1', 'device': 'Red', 'mute': false, 'value': null},
// {'lum': 0, 'channel': '2', 'device': 'Green', 'mute': false, 'value': null},
// {'lum': 0, 'channel': '3', 'device': 'Blue', 'mute': false, 'value': null},
// {'lum': 0, 'channel': '4', 'device': 'Dimmer', 'mute': false, 'value': null},
// {'lum': 0, 'channel': '5', 'device': 'Strobo', 'mute': false, 'value': null},
// {'lum': 0, 'channel': '6', 'device': 'Effect', 'mute': false, 'value': null},
// {'lum': 0, 'channel': '7', 'device': 'Effect2', 'mute': false, 'value':
// null},
// {'lum': 0, 'channel': '8', 'device': 'Effect3', 'mute': false, 'value':
// null},
      ],

    }, mounted: function () {
        var self = this;
        $.ajax({
            url: URLGET +"faders",
            method: 'GET',
            success: function (data) {
                self.channels = data;
            },
            error: function (error) {
                console.log(error);
            }
        });
    },
    methods:{
  	  changeFader: function(fader){
  		axios.get(URLSET+"fader"+"?fader="+(fader.channel -1)+"&value="+fader.lum)
  		.then(function (response) {
  		 // handle success
  		// alert(response);
  		})
  		.catch(function (error) {
  		 // handle error
  			alert(error);
  		})
  		.finally(function () {
  		 // always executed
  		});
  	  }
    }
  });

var app2 = new Vue({
	  
    el: "#app2",
    data: {
    	specielchannels:[
// {'size': 0, 'channel': '1', 'device': 'size', 'mute': false, 'value': null},
// {'size': 0, 'channel': '2', 'device': 'speed', 'mute': false, 'value': null},
      ],

    },
    mounted: function () {
        var self = this;
        $.ajax({
            url: URLGET +"specialFaders",
            method: 'GET',
            success: function (data) {
                self.specielchannels = data;
            },
            error: function (error) {
                console.log(error);
            }
        });
    },
    methods:{
  	  changeFader: function(fader){
  		
  		if (fader.channel == 1 ){
  			axios.get(URLSET+"sice"+"?sice="+fader.size)
  	  		.then(function (response) {
  	  		 // handle success
  	  		// alert(response);
  	  		})
  	  		.catch(function (error) {
  	  		 // handle error
  	  			alert(error);
  	  		})
  	  		.finally(function () {
  	  		 // always executed
  	  		});
  			
  		}else if (fader.channel == 2){
  			axios.get(URLSET+"speed"+"?speed="+fader.size)
  	  		.then(function (response) {
  	  		 // handle success
  	  		// alert(response);
  	  		})
  	  		.catch(function (error) {
  	  		 // handle error
  	  			alert(error);
  	  		})
  	  		.finally(function () {
  	  		 // always executed
  	  		});
  		}  		
  	  }
    }
  });

var appButton = new Vue({
	  el: '#appButton',
	  data: {
		    buttons:[
		      ],
		  }, 
		  mounted: function () {
		        var self = this;
		        $.ajax({
		            url: URLGET +"effectButtons",
		            method: 'GET',
		            success: function (data) {
		                self.buttons = data;
		            },
		            error: function (error) {
		                console.log(error);
		            }
		        });
		    },
		  
	  methods: {
		  click: function(button) {	      
	      axios.get(URLSET+"effect"+"?effect="+button.id)
	  		.then(function (response) {
	  		 // handle success
	  	// alert(response);
	  		})
	  		.catch(function (error) {
	  		 // handle error
	  			alert(error);
	  		})
	  		.finally(function () {
	  		 // always executed
	  		});
	      
	    }
	  }
	});




new Vue({
	  el: '#example-3',
	  data: {
		    checkedNames: []
		  },
		  mounted: function () {
		        var self = this;
		        $.ajax({
		            url: URLGET +"devices",
		            method: 'GET',
		            success: function (data) {
		                self.checkedNames = data;
		            },
		            error: function (error) {
		                console.log(error);
		            }
		        });
		    },
	    methods:{
	    	  changeDevices: function(id){
	    		  axios.get(URLSET+"device"+"?device="+id)
	  	  		.then(function (response) {
	  	  		 // handle success
	  	  	// alert(response);
	  	  		})
	  	  		.catch(function (error) {
	  	  		 // handle error
	  	  			alert(error);
	  	  		})
	  	  		.finally(function () {
	  	  		 // always executed
	  	  		});
	    	  }
	      }
	});

// Scene Buttons

//Scene Buttons

var appButton = new Vue({
	  el: '#sceneButtons',
	  data: {
		    buttons:[
		      ],
		  }, 
		  mounted: function () {
		        var self = this;
		        $.ajax({
		            url: URLGET +"sceneButtons",
		            method: 'GET',
		            success: function (data) {
		                self.buttons = data;
		            },
		            error: function (error) {
		                console.log(error);
		            }
		        });
		    },
		  
	  methods: {
		  click: function(button) {	      
	      axios.get(URLSET+"scene"+"?scene="+button.id)
	  		.then(function (response) {
	  		 // handle success
	  	// alert(response);
	  		})
	  		.catch(function (error) {
	  		 // handle error
	  			alert(error);
	  		})
	  		.finally(function () {
	  		 // always executed
	  		});
	      
	    }
	  }
	});








new Vue({
	  el: '#example-3',
	  data: {
		    checkedNames: []
		  },
		  mounted: function () {
		        var self = this;
		        $.ajax({
		            url: URLGET +"devices",
		            method: 'GET',
		            success: function (data) {
		                self.checkedNames = data;
		            },
		            error: function (error) {
		                console.log(error);
		            }
		        });
		    },
	    methods:{
	    	  changeDevices: function(id){
	    		  axios.get(URLSET+"device"+"?device="+id)
	  	  		.then(function (response) {
	  	  		 // handle success
	  	  	// alert(response);
	  	  		})
	  	  		.catch(function (error) {
	  	  		 // handle error
	  	  			alert(error);
	  	  		})
	  	  		.finally(function () {
	  	  		 // always executed
	  	  		});
	    	  }
	      }
	});

//save Button

var appButton = new Vue({
	  el: '#saveButton',
	  data: {
		    buttons:[ {'name': "Save"}
		      ],
		  }, 		  
	  methods: {
		  click: function(button) {	      
	      axios.get(URLSET+"setSave"+"?save="+true)
	  		.then(function (response) {
	  		 // handle success
	  	// alert(response);
	  		})
	  		.catch(function (error) {
	  		 // handle error
	  			alert(error);
	  		})
	  		.finally(function () {
	  		 // always executed
	  		});
	      
	    }
	  }
	});


// Timon buttons

//document.getElementById("startAddress").value

/*

new Vue({
	  el: '#TButtons',
	  data: {
		    checkedNames: []
		  },
		  mounted: function () {
		        var self = this;
		        $.ajax({
		            url: URLGET +"devices",
		            method: 'GET',
		            success: function (data) {
		                self.checkedNames = data;
		            },
		            error: function (error) {
		                console.log(error);
		            }
		        });
		    },
	    methods:{
	    	  changeDevices: function(id){
	    		  axios.get(URLSET+"device"+"?device="+id)
	  	  		.then(function (response) {
	  	  		 // handle success
	  	  	// alert(response);
	  	  		})
	  	  		.catch(function (error) {
	  	  		 // handle error
	  	  			alert(error);
	  	  		})
	  	  		.finally(function () {
	  	  		 // always executed
	  	  		});
	    	  }
	      }
	});

*/

/*

//register context-menu-item
Vue.component('context-menu-item', {
  template: '#template-context-menu-item',
  props: {
    icon: ''
  }
});

// register context-menu
Vue.component('context-menu', {
  template: '#template-context-menu',
  props: {
    icon: ''
  },
  methods: {
    newRegister: () => {
      alert('New register');
    },
    remove: () => {
      alert('Remove');
    },
    edit: () => {
      alert('Edit');
    }
  }
});

// start app
var vm = new Vue({
  el: '#app',
  data: {
    contextMenuWidth: null,
    contextMenuHeight: null
  },
  methods: {
    showContextMenu: () => {
      var menu = document.getElementById("context-menu");
      if(!this.contextMenuWidth || !this.contextMenuHeight) {
        menu.style.visibility = "hidden";
        menu.style.display = "block";
        this.contextMenuWidth = menu.offsetWidth;
        this.contextMenuHeight = menu.offsetHeight;
        menu.removeAttribute("style");
      }

      if((this.contextMenuWidth + vm.$event.pageX) >= window.innerWidth) {
        menu.style.left = (vm.$event.pageX - this.contextMenuWidth) + "px";
      } else {
        menu.style.left = vm.$event.pageX + "px";
      }

      if((this.contextMenuHeight + vm.$event.pageY) >= window.innerHeight) {
        menu.style.top = (vm.$event.pageY - this.contextMenuHeight) + "px";
      } else {
        menu.style.top = vm.$event.pageY + "px";
      }
      
      menu.classList.add('active');
    },
    hideContextMenu: () => {
      document.getElementById("context-menu").classList.remove('active');
    }
  }
});*/








  