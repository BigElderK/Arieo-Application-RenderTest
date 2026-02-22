cmake_minimum_required(VERSION 3.31)
project(arieo_render_test_app LANGUAGES NONE)

include($ENV{ARIEO_BUILD_ENV_PACKAGES_OUTPUT_DIR}/cmake/build_environment.cmake)

ARIEO_PACKAGE(
    Arieo-Application-RenderTest
    CATEGORY 04_applications
)

ARIEO_APPLICATION_PROJECT(
    arieo_render_test_app
    CONTENT_FOLDER
        ${CMAKE_CURRENT_LIST_DIR}/content
    SCRIPT_FOLDER
        ${CMAKE_CURRENT_LIST_DIR}/scripts
    MANIFEST_FILE
        ${CMAKE_CURRENT_LIST_DIR}/manifest/app.manifest.yaml
)
