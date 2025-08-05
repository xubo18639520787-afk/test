#!/bin/sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME

# Resolve links: $0 may be a link
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`/" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'

# For Cygwin or MSYS, switch paths to Windows format before running java
if [ "x`uname -s`" = "xCYGWIN_NT-5.1" -o "x`uname -s`" = "xCYGWIN_NT-6.0" -o "x`uname -s`" = "xCYGWIN_NT-6.1" -o "x`uname -s`" = "xCYGWIN_NT-6.2" -o "x`uname -s`" = "xCYGWIN_NT-6.3" -o "x`uname -s`" = "xCYGWIN_NT-5.1(XXX)" -o "x`uname -s`" = "xCYGWIN_NT-6.0(XXX)" -o "x`uname -s`" = "xCYGWIN_NT-6.1(XXX)" -o "x`uname -s`" = "xCYGWIN_NT-6.2(XXX)" -o "x`uname -s`" = "xCYGWIN_NT-6.3(XXX)" -o "x`uname -s`" = "xMSYS_NT-5.1" -o "x`uname -s`" = "xMSYS_NT-6.0" -o "x`uname -s`" = "xMSYS_NT-6.1" -o "x`uname -s`" = "xMSYS_NT-6.2" -o "x`uname -s`" = "xMSYS_NT-6.3" ] ; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
fi

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME" >&2
        echo >&2
        echo "Please set the JAVA_HOME variable in your environment to match the" >&2
        echo "location of your Java installation." >&2
        exit 1
    fi
else
    JAVACMD="java"
    if [ ! -x "`which java`" ] ; then
        echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH." >&2
        echo >&2
        echo "Please set the JAVA_HOME variable in your environment to match the" >&2
        echo "location of your Java installation." >&2
        exit 1
    fi
fi

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Escape application args
for arg in "$@" ; do
    # if we have a arg that starts with a dash, we need to escape it
    if [ `echo "$arg" | grep -c "^-"` -gt 0 ] ; then
        # check if the arg contains a space
        if [ `echo "$arg" | grep -c " "` -gt 0 ] ; then
            # escape the arg
            arg="\"$arg\""
        fi
    fi
    # add the arg to the APP_ARGS array
    APP_ARGS="$APP_ARGS $arg"
done

# add the classpath
APP_ARGS="-classpath \"$CLASSPATH\" $APP_ARGS"

# add the main class name
APP_ARGS="org.gradle.wrapper.GradleWrapperMain $APP_ARGS"

# add the default JVM options
APP_ARGS="$DEFAULT_JVM_OPTS $APP_ARGS"

# add the JAVA_OPTS
APP_ARGS="$JAVA_OPTS $APP_ARGS"

# add the GRADLE_OPTS
APP_ARGS="$GRADLE_OPTS $APP_ARGS"

# execute the java command
exec "$JAVACMD" $APP_ARGS