<!--

***
***
*** To avoid retyping too much info. Do a search and replace for the following:
*** github_username, repo_name, twitter_handle, email, project_title, project_description
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
![GitHub language count](https://img.shields.io/github/languages/count/noah-erasmus/neon)
![GitHub repo size](https://img.shields.io/github/repo-size/noah-erasmus/neon)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/noah-erasmus/neon)
![GitHub watchers](https://img.shields.io/github/watchers/noah-erasmus/neon)



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/github_username/repo_name">
    <img src="https://raw.githubusercontent.com/noah-erasmus/neon/main/readmeAssets/neonLogo.png" alt="Logo" width="180" height="180">    
  </a>

  <p align="center">
    A music library app for the nerds.
    <br />
    <a href="https://github.com/github_username/repo_name"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/github_username/repo_name">View Demo</a>
    ·
    <a href="https://github.com/github_username/repo_name/issues">Report Bug</a>
    ·
    <a href="https://github.com/github_username/repo_name/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#features-and-functions">Features and Functions</a></li>
    <li>
      <a href="#concept-ideation">Concept Process</a>
    </li>
    <li>
      <a href="#development-process">Development Process</a>
      <ul>
        <li><a href="#implementation-of-features">Implementation</a></li>
        <li><a href="#design-architecture">Design Architecture</a></li>
      </ul>
    </li>
    <li><a href="#mockups">Mockup</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This app is for those music fans who want to know everything that there is to know about their favourite albums. If you've ever wondered when an album was released, but your streaming service didn't tell you, then neon is the app that you needed. Search through an archive filled with your album collection, and find extended information on each one with a tap of a button. 


### Built With

* [Swift]()
* [SwiftUI]()
* [XCode]()



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

Requires iOS 13 and Xcode 11

  
### Installation

1. In Xcode go to
  ```sh
  File -> Swift Packages -> Add Package Dependency
  ```
2. and paste in the repo's url:
`https://github.com/noah-erasmus/neon`



<!-- USAGE EXAMPLES -->
## Features and Functions

### Features

* A series of Onboarding Cards, to familiarise user with the apps features

* Library of albums available in either list or grid view

* Expanded details view for each album

* Settings page with appearances toggles.


### Functions 
* `TabView` used for the onboarding screens and changing between the Library View and Settings View.
* `List` and `ScrollView` used for Library list view.
* `LazyVGrid` used Library grid view.
* `@EnvironmentObject` used to store appearance settings.
* `@State` used for search bar functionality.

## Concept Ideation
![Group 57](https://github.com/noah-erasmus/neon/raw/main/readmeAssets/NeonConceptIdeationAlt.png)

## Development Process

### Implementation of Features

#### Splash Page
SwiftUI and Xcode have built in launch screen capability. Simple edit the `info.plst` file.

#### Onboarding
Consists of 3 cards, served using a `TabView`. This makes them scrollable side-to-side. Only new users will be greeted by the Onboarding View.

#### Library View
Available in either list or grid form, changeable in the Settings View. List form uses `List`, grid form uses `LazyVGrid`. `ScrollView` allows moving beyond the screen bounds.

#### Detailed View
An `@EnvironmentObject` is used to store user input and provided a screen filled with expanded details.

#### Search List
The search field stores a string in`@State`, the albums array is filter by this string.

#### Design Architecture
For my design architecture I made use of the Model View Controller architecture for my project as this was the architecture I was more familiar with at the time. The ideal method would definitely be to refactor the project to an MVVM structure, and I aim to do so.

#### Unit Test

Testing capablities set up for the search bar.

## Mockups

* Library Views
  <img width="1920" alt="Group 106" src="https://raw.githubusercontent.com/noah-erasmus/neon/main/readmeAssets/NoahErasmus_190138_iOS303_Mockup_1.png">
* Detail View
  <img width="1920" alt="Group 106" src="https://raw.githubusercontent.com/noah-erasmus/neon/main/readmeAssets/NoahErasmus_190138_iOS303_Mockup_2.png">
* Onboarding & Settings Views
  <img width="1920" alt="Group 106" src="https://raw.githubusercontent.com/noah-erasmus/neon/main/readmeAssets/NoahErasmus_190138_iOS303_Mockup_3.png">

<!-- ROADMAP -->
## Future Features

* Integration with streaming services such as Spotify and Apple Music.
* "Liked" albums functionality.
* Increased appearance customisability.



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b noah-erasmus/Neon`)
3. Commit your Changes (`git commit -m 'Add some Neon'`)
4. Push to the Branch (`git push origin noah-erasmus/neon`)
5. Open a Pull Request

## Author

Noah Erasmus

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

* **Noah Erasmus** - 190138@virtualwindow.co.za

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Armand Pretorius](https://github.com/ArmandPretorius)
* [SwiftUI Documentation](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
* [Hacking With Swift](https://www.hackingwithswift.com/quick-start/swiftui)
