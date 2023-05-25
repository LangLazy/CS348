# Setting up Development Environment

Make sure you're using node version 18. Install it with [nvm](https://github.com/nvm-sh/nvm) or however else.

From the root folder, first run
``npm install``
then run
``npm start -- --tunnel``

This will ask to install an `@expo/ngrok` package (globally) which will tunnel the local development server to an actual URL on the internet. 
From there, install the [Expo Go](https://expo.dev/client) app on your phone and scan the provided QR code on your terminal
(either using the Camera app on iOS or the Expo Go app itself on Android).

This will bundle the app on either platform and get your phone set up for development.
