
user = require('../controlers/userCtr')
department = require('../controlers/departmentCtr')
admin = require('../controlers/adminCtr')
report = require('../controlers/reportCtr')
installer = require('../controlers/installCtr')

exports.createRutes = (app)->
  app.get('/install', installer.install)
  app.get('/', report.index);
  app.get('/write', report.writeIndex);
  app.post('/write', report.write);
  app.get('/password', user.passwordIndex);
  app.post('/password', user.changePassword);
  app.post('/delete', report.delete);
  app.get('/show', report.showIndex);
  app.post('/getsubordinateuseranddepartment', report.getSubordinateUserAndDepartment);
  app.get('/showsubordinate', report.showsubordinateIndex);
  app.post('/getreports', report.getReports);
  app.post('/getreportnum', report.getReportNum);
  app.get('/login', user.loginIndex);
  app.get('/logout', user.logout);
  app.post('/login', user.login);
  app.post('/admin/createuser', user.createUser);
  app.post('/admin/removeuser', user.removeUser);
  app.get('/admin/getallusers', user.getAllUsers);
  app.post('/admin/updateuser', user.updateUser);
  app.post('/admin/hasuser', user.hasUser);

  app.get('/admin', admin.index);
  app.get('/admin/users', admin.usersIndex);
  app.get('/admin/admingroup', admin.admingroupIndex);

  app.post('/admin/createdepartment', department.createDepartment);
  app.get('/admin/alldepartments', department.getAllDepartments);
  app.post('/admin/removedepartment', department.removeDepartment);
  app.post('/admin/updatedepartment', department.updateDepartment);

  app.post('/admin/setadmin', user.setAdmin);
  app.post('/admin/deleteadmin', user.deleteAdmin);
  app.post('/admin/getadmins', user.getAdmins);

  app.get('/m', user.indexMobile);
  app.get('/m/login', user.loginIndexMobile);
  app.get('/m/show', report.showIndexMobile);
  app.get('/m/write', report.writeIndexMobile);
  app.get('/m/showsubordinate', report.subordinateIndexMobile);
  app.get('/m/setting', report.settingMobile);
  app.get('/m/logout', user.logoutMobileIndex);
  app.get('/m/password', user.passwordMobileIndex)