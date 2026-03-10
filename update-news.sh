#!/bin/bash
# Update marathon news - run this before redeploying
# Or set up cron: 0 8 * * * /path/to/update-news.sh

cd ~/.openclaw/workspace/marathon-dashboard

# Sample news update - in production, fetch from API
echo '[{"title": "🏆 Major Marathon Updates", "date": "'$(date +%b\ %Y)'", "desc": "Latest race announcements"}, {"title": "👟 New Running Gear", "date": "'$(date +%b\ %Y)'", "desc": "Latest shoe releases"}, {"title": "🏃 Training Tips", "date": "'$(date +%b\ %Y)'", "desc": "Weekly training advice"}, {"title": "🌡️ Weather & Racing", "date": "'$(date +%b\ %Y)'", "desc": "Race day conditions"}, {"title": "💪 Recovery Science", "date": "'$(date +%b\ %Y)'", "desc": "Latest recovery research"}]' > news.json

echo "News updated! Redeploy to publish."