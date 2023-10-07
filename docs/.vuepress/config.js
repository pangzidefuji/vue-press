module.exports = {
    title: 'Chain door wallet',
    
    themeConfig: {
        // navbar: [
        //     { text: 'Terms of Service', link: '/' },
        //     { text: 'Privacy Policy', link: '/privacy-policy' },
        // ],
        // sidebar: [
        //     '/',
        //     '/privacy-policy'
        // ],
        sidebar: [  
          {  
            title: 'Terms of Service',  
            collapsable: true,  
            children: [  
              '/',  
            ],  
          },  
          {  
            title: 'Privacy Policy',  
            collapsable: true,  
            children: [  
              '/privacy-policy',   
            ],  
          }, 
        },
    // base: '/vue-press/',
      // dist: 'docs',
  }
