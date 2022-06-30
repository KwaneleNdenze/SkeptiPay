/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/views/**/*"],
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
        bodyGray: '#1e1e2f'
      },
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
  ],
}
