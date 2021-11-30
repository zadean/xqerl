 element html {
    element head {
    element title { 'Now Flying Xqerl'},
    element link { 
      attribute rel {"stylesheet"},
      attribute href { "/assets/sakura.css"},
      attribute type {"text/css"}
    }
  },
  element body{ 
    element img { 
     attribute src { "/assets/logo_m.png" },
     attribute alt { "xqerl logo" }
     },
    element h1 { 'You Are Now Flying Xqerl'  },
    element p { 'Configuration is needed' }
  }
} => serialize()
