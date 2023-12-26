blankgtk_sources = [
  'main.vala',
  'window.vala',
  'application.vala',
  'homeHelper.vala'
]

screens=[
  './screens/login.vala',
 './screens/register.vala',
 './screens/SongSection.vala',
 './screens/LeaderBoard.vala', 
 './screens/SongAns.vala',
 './screens/LeaderBoard.vala',
  './screens/home.vala',
  './screens/SongGrade.vala'

 ]

widget=[
  './widget/labelLogin.vala', 
  './widget/labelRegister.vala',
  './widget/submitLogin.vala',
  './widget/submitRegister.vala',
  './widget/songCard.vala',
  './widget/userBox.vala',
  './widget/songForm.vala',
  './widget/songCard-looksOnly.vala',
  './widget/formLogin.vala',
  './widget/formRegister.vala',
  './widget/labelHome.vala',
  './widget/progressHome.vala',
  './widget/cardHome.vala',
  './widget/gradeBox.vala',
  './widget/resultBox.vala',
  './widget/buttonFinish.vala'
  ]  

controllers=[
  './controllers/AccountData.vala', 
  './controllers/Leaderboard.vala', 
  './controllers/SongGrade.vala', 
  './controllers/SongSection.vala', 
  './controllers/StartSong.vala',  
  './controllers/tes.vala', 
]
functionality=[
  './functionality/Routes.vala', 
  './functionality/Http.vala', 
  './functionality/Jsonizer.vala', 
]
blankgtk_deps = [
  dependency('gtk4'),
  dependency('libsoup-2.4'),
  dependency('json-glib-1.0')
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
