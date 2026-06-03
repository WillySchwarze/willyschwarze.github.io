# Hugo Landing Sections Theme

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Configuration](#configuration)
- [Content](#content)
  - [About](#about)
  - [Highlights](#highlights)
  - [Legal](#legal)
  - [Sections](#sections)
- [Customize styles](#customize-styles)
- [Sites using hugo-landing-sections](#sites-using-hugo-landing-sections)
- [Contribution](#contribution)
- [Donations](#donations)

## Features

Hugo Landing Sections is an Hugo theme for creating organizations landing pages
with sections. It is a simple and clean theme.

Main features:

- Multilingual
- Responsive
- Supports Mastodon timeline
- Uses Bootstrap and Jquery

## Screenshots

Main page

[![Main
page](https://codeberg.org/VaDeCodiNet/hugo-landing-sections/raw/branch/main/images/main-page.png
"Main
page")](https://codeberg.org/VaDeCodiNet/hugo-landing-sections/raw/branch/main/images/main-page-big.png)

Mastodon timeline

[![Mastodon
timeline](https://codeberg.org/VaDeCodiNet/hugo-landing-sections/raw/branch/main/images/mastodon-timeline.png
"Mastodon
timeline")](https://codeberg.org/VaDeCodiNet/hugo-landing-sections/raw/branch/main/images/mastodon-timeline-big.png)

Section page

[![Section
page](https://codeberg.org/VaDeCodiNet/hugo-landing-sections/raw/branch/main/images/section-page.png
"Section
page")](https://codeberg.org/VaDeCodiNet/hugo-landing-sections/raw/branch/main/images/section-page-big.png)

## Installation

The easiest way to install `hugo-landing-section` is to make example site work
and then configure and write your own configs and content. You have two options
depending if you want to use git submodules or not.

1. Use git submodules

    ```bash
    mkdir -p mysite/themes
    cd mysite
    git init
    cd themes
    git submodule add https://codeberg.org/VaDeCodiNet/hugo-landing-sections.git
    cd ..
    cp -r themes/hugo-landing-sections/exampleSite/* .
    npm install
    hugo server
    ```

1. Do not use git submodules (clone the theme)

    ```bash
    mkdir -p mysite/themes
    cd mysite/themes
    git clone https://codeberg.org/VaDeCodiNet/hugo-landing-sections.git
    cd ..
    cp -r themes/hugo-landing-sections/exampleSite/* .
    npm install
    hugo server
    ```

## Configuration

| Parameter               | Description                                                                                                | Type                          | Default                      |
| ----------------------- | ---------------------------------------------------------------------------------------------------------- | ----------------------------- | ---------------------------- |
| author                  | Author description                                                                                         | string                        | ''                            |
| banner.htmlBefore       | Show/hide layouts/partials/custom-before-banner.html to add extra HTML before banner                       | boolean                       | False                         |
| banner.logo             | Banner logo image name                                                                                     | string                        | 'logo-banner.png'             |
| banner.logoSmallDevices | Banner logo image name for small devices                                                                   | string                        | 'logo-banner-small.png'       |
| contact.address         | Contact address                                                                                            | string                        | ''                            |
| contact.email           | Contact email                                                                                              | string                        | ''                            |
| contact.phones          | List with contact phones                                                                                   | list                          | []                            |
| description             | Site description                                                                                           | string                        | ''                            |
| favicon                 | Favicon icon                                                                                               | string                        | ''                            |
| fediverseCreator        | Fediverse creator to add to site meta data fediverse:creator (ex: @<UserName@mastodon.social>")            | string                        | ''                            |
| htmlAfterFooter         | Show/hide layouts/partials/custom-after-footer.html to add extra HTML after footer (useful to add scripts) | boolean                       | False                         |
| logoLicense             | Site license image name                                                                                    | string                        | ''                            |
| maintenance             | Activate/deactivate site maintenance mode                                                                  | boolean                       | False                         |
| mastodon.btnReload      | Show button to reload posts with this text. If no text, button is not shown                                | string                        | ''                            |
| mastodon.btnSeeMore     | Show button to see more posts with this text. If no text, button is not shown                              | string                        | ''                            |
| mastodon.hideCounterBar | Hide/show counterBar for each post                                                                         | boolean                       | True                          |
| mastodon.hideReplies    | Hide/show Mastodon replies for each post                                                                   | boolean                       | True                          |
| mastodon.instance       | Mastodon root URL instance (ex: <https://mastondon.social>)                                                | string                        | ''                            |
| mastodon.timeline       | Show/hide Mastodon timeline                                                                                | boolean                       | False                         |
| mastodon.timelineType   | Mastodon timeline type                                                                                     | 'profile'\|'hashtag'\|'local' | 'profile'                     |
| mastodon.userId         | Mastodon user id [0]                                                                                       | string                        | ''                            |
| mastodon.userName       | Mastodon username (ex: @UserName)                                                                          | string                        | ''                            |
| menu.logo               | Menu logo image name                                                                                       | string                        | 'logo-menu.png'               |
| menu.logoSmallDevices   | Menu logo image name for small devices                                                                     | string                        | 'logo-menu-small.png'         |
| og.image                | Open graph image                                                                                           | string                        | ''                            |
| repos.git               | git URL (another git repository)                                                                           | string                        | ''                            |
| repos.github            | github URL                                                                                                 | string                        | ''                            |
| repos.gitlab            | gitlab URL                                                                                                 | string                        | ''                            |
| style.fontFamily        | Site font family                                                                                           | string                        | 'helvetica, arial, sans-serif |
| style.fontSize          | Site font size                                                                                             | string                        | '16px'                        |
| style.brandColor        | Banner, highlights and mastodon backgrounds color. Menu and footer links color                             | string                        | '#9ccefc'                   |
| style.brandColor2       | Highlights and section title color                                                                         | string                        | '#0960af'                   |
| style.brandColor3       | Menu and footer backgrounds color                                                                          | string                        | '#0e4477'                   |
| style.footerColor       | Footer text color                                                                                          | string                        | '#ffffff'                   |
| subTitle                | Banner subtitle                                                                                            | string                        | ''                            |
| twitter                 | Twitter user name                                                                                          | string                        | ''                            |

[0] To get Mastodon user id: https://MASTODON_INSTANCE/api/v1/accounts/lookup?acct=USERNAME

## Content

There are 4 types of content (with its corresponding menus).

### About

About pages are useful to write about your company/organizations generic
information or contact page. These pages will be linked from the main menu and
footer.

Front matter example:

```yaml
---
title: About 1
menus: about
weight: 10
description: Description About 1
---
```

### Highlights

Highlights content will be shown in main page as cards. An image can be added
and will be shown in the corresponding card in main page.

Front matter example:

```yaml
---
title: Highlight 1
img: demo.jpg
weight: 10
---
```

### Legal

Legal pages are useful to write about legal notices, privacy policy... These
pages are linked from footer.

Front matter example:

```yaml
---
title: Legal 1
menus: legal
weigth: 10
description: Description Legal 1
---
```

### Sections

Section pages are linked from the main menu and footer. The first part of the
section body will be also shown in main page with cards. An image can be added
and will be shown in the corresponding card in main page. An slogan can be added
and will be shown as the text link to the section in the banner.

Front matter example:

```yaml
---
title: Section 1
img: demo.jpg
slogan: Slogan Section 1
menus: sections
weight: 10
description: Description Section 1
---
```

In each section folder you can add more files with more specific content. This
conten will be shown in cards with an optional icon. Icons are bootstrap icons,
you can find icon names at <https://icons.getbootstrap.com/>

Front matter example:

```yaml
---
title: Card 1
icon: question-circle
weight: 10
---
```

## Customize styles

You can customize theme styles creating `assets/scss/_custom.scss` and adding
there you custom rules.

## Sites using hugo-landing-sections

- <https://vadecodi.net> ([Source code](https://codeberg.org/VaDeCodiNet/vadecodi.net))

## Contribution

All contributions are always welcome! Create issues and MRs and we will review
them with pleasure :-)

## Donations

We accept donation to maintain this theme via LiberaPay.

[![LiberaPay donation logo](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/vadecodi/donate)
