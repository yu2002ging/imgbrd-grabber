project(lib)

find_package(Qt5Core REQUIRED)
find_package(Qt5Gui REQUIRED) # For some classes such as QPixmap
find_package(Qt5Network REQUIRED)
find_package(Qt5Script REQUIRED)
find_package(Qt5Sql REQUIRED)
find_package(Qt5Xml REQUIRED)
set(QT_LIBRARIES Qt5::Core Qt5::Gui Qt5::Network Qt5::Script Qt5::Sql Qt5::Xml)

file(GLOB_RECURSE SOURCES "src/*.cpp")
include_directories("src/")

add_library(${PROJECT_NAME} STATIC ${SOURCES})
target_link_libraries(${PROJECT_NAME} ${QT_LIBRARIES} ${LIBS})
