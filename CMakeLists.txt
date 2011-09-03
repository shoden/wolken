cmake_minimum_required(VERSION 2.6)

project(wolken)

set(CRON_CONF conf/cron/wolken)
set(XDG_CONF  conf/xdg/wolken.conf)
set(SQL_CONF  conf/sql/wolken.sql)

install( FILES ${CMAKE_CURRENT_SOURCE_DIR}/${CRON_CONF} DESTINATION /etc/cron.d)
install( FILES ${CMAKE_CURRENT_SOURCE_DIR}/${XDG_CONF}  DESTINATION /etc/xdg/wolken)
install( FILES ${CMAKE_CURRENT_SOURCE_DIR}/${SQL_CONF}  DESTINATION share/wolken)
