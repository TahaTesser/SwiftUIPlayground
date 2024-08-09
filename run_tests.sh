#!/bin/bash
SCHEME='playground'
DESTINATION='platform=iOS Simulator,OS=latest,name=iPhone 15 Pro'
xcodebuild test -scheme $SCHEME -sdk iphonesimulator -destination "$DESTINATION" CODE_SIGNING_ALLOWED='NO'
