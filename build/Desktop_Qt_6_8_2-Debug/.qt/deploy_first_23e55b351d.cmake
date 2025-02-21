include(/home/misantropi/akno/Wissenschaft/first/build/Desktop_Qt_6_8_2-Debug/.qt/QtDeploySupport.cmake)
include("${CMAKE_CURRENT_LIST_DIR}/first-plugins.cmake" OPTIONAL)
set(__QT_DEPLOY_I18N_CATALOGS "qtbase")

qt6_deploy_runtime_dependencies(
    EXECUTABLE /home/misantropi/akno/Wissenschaft/first/build/Desktop_Qt_6_8_2-Debug/first
    GENERATE_QT_CONF
)
