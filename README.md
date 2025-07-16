# Project 5 - Tumblr Feed

Submitted by: Natalie Chan

Tumblr Feed is an app that simplified Tumblr-style feed that displays a scrollable list of posts, including text and images. 
It mimics the core Tumblr experience by showing content from various blogs in a clean, user-friendly layout.

Time spent: 4 hours spent in total

## Required Features

The following **required** functionality is completed:

- ✅ App has a configured table view and table view call
- ✅ App populates the table view with data fetched from an API


The following **optional** features are implemented:

- ❌ App fetches posts from a different Tumblr blog
- ❌ App has a refresh control to update the table view

The following **additional** features are implemented:

- Fix the interface and add proper contraints 

## Video Walkthrough
<div>
    <a href="https://www.loom.com/share/8e946a7595ab4090959a2c0bd18de8cc">
      <p>Loom Message - 16 July 2025 - Watch Video</p>
    </a>
    <a href="https://www.loom.com/share/8e946a7595ab4090959a2c0bd18de8cc">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/8e946a7595ab4090959a2c0bd18de8cc-c3601910d7b15290-full-play.gif">
    </a>
  </div>

## Notes

One of the challenges I faced during development was forgetting to call reloadData() on the table view, which caused the data to not display in the Swift app. I also encountered a connection issue between the IBOutlet and the custom PostCell, which took some time to debug. However, the biggest hurdle for me has been setting up Auto Layout constraints correctly. Although I’m still trying to fully understand it, I’ve managed to stop views from overlapping—for now, that’s the best I’ve been able to achieve.

## License

    Copyright [2025] [Natalie Chan]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
