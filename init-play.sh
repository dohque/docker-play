#!/bin/bash
#
# Minimal Play framework project
#

mkdir project

echo "sbt.version=${SBT_VERSION}" > project/build.properties

cat > project/plugins.sbt <<EOF

resolvers += Resolver.typesafeRepo("releases")

addSbtPlugin("com.typesafe.play" % "sbt-plugin" % "${PLAY_VERSION}")
EOF

cat > build.sbt <<EOF

name := "PlayTest"

version := "1.0"

scalaVersion := "$SCALA_VERSION"

lazy val root = (project in file(".")).enablePlugins(PlayScala)
EOF

sbt about
