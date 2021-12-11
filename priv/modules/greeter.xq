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
    element h1 { 'You Are Now Flying Xqerl' },
    element p { 'xQuery 3.1 is the query language for building data driven web applications' },
    element p { 
'Xqerl is a xQuery 3.1 application server, with a built in database that
can store any XDM item. These XDM database items include document-nodes, maps, arrays, and even functions' }
  }
} => serialize()
