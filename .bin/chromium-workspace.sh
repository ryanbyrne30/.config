#!/bin/bash

# URLs for your tabs
GROK_URL="https://grok.x.ai"
CLAUDE_URL="https://claude.ai"
LINEAR_URL="https://linear.app"
GITLAB_URL="https://gitlab.com"

# Check if Chromium is running with our specific profile
if ! pgrep -f "chromium.*--class=WorkspaceChromium" > /dev/null; then
    # Launch Chromium with all three tabs
    chromium --class=WorkspaceChromium "$GROK_URL" "$CLAUDE_URL" "$LINEAR_URL" "$GITLAB_URL" &
    sleep 2
fi

# Focus the Chromium window
wmctrl -xa WorkspaceChromium || wmctrl -a Chromium
sleep 0.1
