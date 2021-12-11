 element html {
    element head {
    element title { 'Now Flying Xqerl'},
    element link { 
      attribute rel {"stylesheet"},
      attribute href { "/assets/styles/sakura.css"},
      attribute type {"text/css"}
    },    
    element link { 
      attribute rel {"icon"},
      attribute href { "/assets/images/favicon.ico"},
      attribute sizes {"any"}
    }
  },
  element body{ 
    element img { 
     attribute src { "/assets/images/logo.png" },
     attribute alt { "xqerl logo" }
     },
    element h1 { 'You Are Now Flying Xqerl'  },
    element p { 'Configuration is needed' }
  }
} => serialize()
