# MarvelPop

This app has been developed using latest Swift version and the [Marvel API](https://developer.marvel.com) where you can explore Marvel's universe characters and see the full list of comics, series and stories they appear on.

In order to start using the app you should first of all clone or download the source code directly to your computer. 
Once downloaded, you can open in Xcode and let it download the necessary packages. After that, you can directly run it in the simulator you select.

### Development
- Xcode 13.3.1
- Swift 5
- SPM
- Unit tests

### External libraries used (SPM)
- [Lottie](https://github.com/airbnb/lottie-ios): Animations for the loading states / empty search results.

### Architecture
- App developed using `MVVM` pattern and `Coordinator` element to handle flows.
- To easily handle views creation, coordinator has a UI `Factory` where all the necessary setup for each screen is done and leaves the coordinator cleaner just to handle routings and navigation decisions.
- Communication between layers is done by `protocols` and view's UI is handled by `states`.
- All UI is implemented by code and without using Storyboards / XIBs.
- Mocked API implementation to easily mock the app for testing and inject the response we want for each scenario to test.

#### Licences
Data provided by Marvel. © 2014 Marvel
