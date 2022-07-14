/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/views/**/*", './app/javascript/**/*.js'],
  theme: {
    // screens: {
    //   sm: '480px',
    //   md: '768px',
    //   lg: '976px',
    //   xl: '1440px'
    // },
    extend: {
      colors: {
        darkGreen: '#00540f',
        lightGreen: '#43764c',
        darkGray: '#32325d',
        bodyGray: '#1e1e2f',
        cardBody: '#27293d',
        darkText: 'rgba(255, 255, 255, 0.6)',
        darkRed: '#8b0000',
        menuActive: '#f5f5f5',
      },
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
  ],
}
