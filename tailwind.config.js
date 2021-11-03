module.exports = {
  theme: {
    colors: {
      'primary': {
        DEFAULT: 'var(--material-color-primary)',
        'on-dark': 'var(--material-color-primary-on-dark)',
      },
      'primary-container': {
        DEFAULT: 'var(--material-color-primary-container)',
        'on-dark': 'var(--material-color-primary-container-on-dark)',
      },
      'secondary': {
        DEFAULT: 'var(--material-color-secondary)',
        'on-dark': 'var(--material-color-secondary-on-dark)',
      },
      'secondary-container': {
        DEFAULT: 'var(--material-color-secondary-container)',
        'on-dark': 'var(--material-color-secondary-container-on-dark)',
      },
      'tertiary': {
        DEFAULT: 'var(--material-color-tertiary)',
        'on-dark': 'var(--material-color-tertiary-on-dark)',
      },
      'tertiary-container': {
        DEFAULT: 'var(--material-color-tertiary-container)',
        'on-dark': 'var(--material-color-tertiary-container-on-dark)',
      },
      'surface': {
        DEFAULT: 'var(--material-color-surface)',
        'on-dark': 'var(--material-color-surface-on-dark)',
      },
      'surface-variant': {
        DEFAULT: 'var(--material-color-surface-variant)',
        'on-dark': 'var(--material-color-surface-variant-on-dark)',
      },
      'background': {
        DEFAULT: 'var(--material-color-background)',
        'on-dark': 'var(--material-color-background-on-dark)',
      },
      'error': {
        DEFAULT: 'var(--material-color-error)',
        'on-dark': 'var(--material-color-error-on-dark)',
      },
      'error-container': {
        DEFAULT: 'var(--material-color-error-container)',
        'on-dark': 'var(--material-color-error-container-on-dark)',
      },
      'on-primary': {
        DEFAULT: 'var(--material-color-on-primary)',
        'on-dark': 'var(--material-color-on-primary-on-dark)',
      },
      'on-primary-container': {
        DEFAULT: 'var(--material-color-on-primary-container)',
        'on-dark': 'var(--material-color-on-primary-container-on-dark)',
      },
      'on-secondary': {
        DEFAULT: 'var(--material-color-on-secondary)',
        'on-dark': 'var(--material-color-on-secondary-on-dark)',
      },
      'on-secondary-container': {
        DEFAULT: 'var(--material-color-on-secondary-container)',
        'on-dark': 'var(--material-color-on-secondary-container-on-dark)',
      },
      'on-tertiary': {
        DEFAULT: 'var(--material-color-on-tertiary)',
        'on-dark': 'var(--material-color-on-tertiary-on-dark)',
      },
      'on-tertiary-container': {
        DEFAULT: 'var(--material-color-on-tertiary-container)',
        'on-dark': 'var(--material-color-on-tertiary-container-on-dark)',
      },
      'on-surface': {
        DEFAULT: 'var(--material-color-on-surface)',
        'on-dark': 'var(--material-color-on-surface-on-dark)',
      },
      'on-surface-variant': {
        DEFAULT: 'var(--material-color-on-surface-variant)',
        'on-dark': 'var(--material-color-on-surface-variant-on-dark)',
      },
      'on-background': {
        DEFAULT: 'var(--material-color-on-background)',
        'on-dark': 'var(--material-color-on-background-on-dark)',
      },
      'on-error': {
        DEFAULT: 'var(--material-color-on-error)',
        'on-dark': 'var(--material-color-on-error-on-dark)',
      },
      'on-error-container': {
        DEFAULT: 'var(--material-color-on-error-container)',
        'on-dark': 'var(--material-color-on-error-container-on-dark)',
      },
      'outline': {
        DEFAULT: 'var(--material-color-outline)',
        'on-dark': 'var(--material-color-outline-on-dark)',
      },
      'shadow': 'var(--material-color-shadow)',
      'inverse-surface': {
        DEFAULT: 'var(--material-color-inverse-surface)',
        'on-dark': 'var(--material-color-inverse-surface-on-dark)',
      },
      'inverse-on-surface': {
        DEFAULT: 'var(--material-color-inverse-on-surface)',
        'on-dark': 'var(--material-color-inverse-on-surface-on-dark)',
      },
      'inverse-primary': {
        DEFAULT: 'var(--material-color-inverse-primary)',
        'on-dark': 'var(--material-color-inverse-primary-on-dark)',
      },
    }
  },
  purge: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/components/**/*.html.erb'
  ]
}
