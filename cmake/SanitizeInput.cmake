function(SanitizeInput VAR)
	string(TOLOWER "${${VAR}}" VALUE)
	if(VALUE STREQUAL "on")
		set(${VAR} "ON" PARENT_SCOPE)
	elseif(VALUE STREQUAL "yes")
		set(${VAR} "ON" PARENT_SCOPE)
	elseif(VALUE STREQUAL "true")
		set(${VAR} "ON" PARENT_SCOPE)
	elseif(VALUE STREQUAL "1")
		set(${VAR} "ON" PARENT_SCOPE)
	elseif(VALUE STREQUAL "off")
		set(${VAR} "OFF" PARENT_SCOPE)
	elseif(VALUE STREQUAL "no")
		set(${VAR} "OFF" PARENT_SCOPE)
	elseif(VALUE STREQUAL "false")
		set(${VAR} "OFF" PARENT_SCOPE)
	elseif(VALUE STREQUAL "0")
		set(${VAR} "OFF" PARENT_SCOPE)
	else()
		set(${VAR} "${VALUE}" PARENT_SCOPE)
	endif()
endfunction()
