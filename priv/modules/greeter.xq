 element html {
  attribute lang {'en'},
    element head {
    element title { 'Hey Hey My My'}
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
