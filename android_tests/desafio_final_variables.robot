*** Variables ***
#Setup do device
${REMOTE_URL}            http://localhost:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      9.0
${DEVICE_NAME}           prime_experts
${APP_PACKAGE}           com.google.android.youtube
${APP_ACTIVITY}          com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}       UiAutomator2


#Locators
${BANNER_ICON}      thumbnail
${nome_do_canal}    Adrenaline
${BTN_SEARCH}                  accessibility_id=Search
${INPUT_SEARCH}                search_edit_text
${TITLE}                       com.google.android.youtube:id/channel_title
${CHANNEL_NAME}                channel_name
${PLAYLISTS}                   accessibility_id=Playlists
${CHOOSE_E3}                   //android.widget.TextView[@text='E3 2021'] 
${NAVIGATEUP_BTN}              accessibility_id=Navigate up
${HOME_BTN}                    accessibility_id=Home
${TRENDING_BTN}                accessibility_id=Trending
${SUBSCRIPTIONS_BTN}           accessibility_id=Subscriptions
${NOTIFICATION_BTN}            accessibility_id=Notifications
${ACCOUNT_BTN}                 accessibility_id=Account            
${EMAIL_BOX}                   class=android.widget.EditText
${EMAIL}                       uddy0993@gmail.com
${NEXT_BTN}                    class=android.widget.Button
${YT_LOGO}                        accessibility_id=YouTube
