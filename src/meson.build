blankgtk_sources = [
  'main.vala',
  'window.vala',
  'application.vala',
  'homeHelper.vala'
]

screens=[
  './screens/login.vala',
 './screens/register.vala']
widget=[
  './widget/labelLogin.vala', 
  './widget/labelRegister.vala',
  './widget/submitLogin.vala',
  './widget/submitRegister.vala']
controllers=[
  './controllers/tes.vala', 
]
functionality=[
  './functionality/Routes.vala', 
]
blankgtk_deps = [
  dependency('gtk4'),
]

gnome = import('gnome')
blankgtk_sources += screens
blankgtk_sources += widget
blankgtk_sources += controllers
blankgtk_sources += functionality
blankgtk_sources += gnome.compile_resources('blankgtk-resources',
  'blankgtk.gresource.xml',
  c_name: 'blankgtk'
)

executable('blankgtk', blankgtk_sources,
  vala_args: '--target-glib=2.50',  dependencies: blankgtk_deps,
  install: true,
)
