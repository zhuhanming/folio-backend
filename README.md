<!-- markdownlint-disable MD033 MD041 -->
<h1 align="center">Folio</h1>
<p align="center"><em>A Seamless Drag and Drop Portfolio Building Experience</em></p>

Folio is a portfolio builder that helps you to craft a simple yet beautiful portfolio in minutes, through a seamless drag and drop experience. Save your work and immediately get a shareable link to your online portfolio.

Folio was built over a course of 24 hours for the hackathon [Hack&Roll 2020](https://hacknroll.nushackers.org). The team members are:

- [Zhu Hanming](https://www.github.com/zhuhanming)
- [Liu Jia Rui](https://github.com/charoi)
- [Praveen Elango](https://github.com/PraveenElango)
- [Nicholas Toh](https://github.com/nicktohzyu)

> The current maintainer of this project is [Hanming](https://www.github.com/zhuhanming).

The code for the React frontend can be found [here](https://github.com/zhuhanming/folio).

## Features

With Folio, you can instantly add the following elements to your portfolio:

- Title
- Subtitle
- Description
- Caption
- Message
- Images (up to 3 in a row, automatically resizes)
- URLs
- YouTube Videos
- Code Samples
- SoundCloud Embed

Simply drag and drop it into the middle. It's that easy!

## Getting Started

If you wish to run this app locally, make sure to clone this repository first.

```bash
git clone https://github.com/zhuhanming/folio-backend.git
```

Navigate into the project folder, install the dependences and create the database:

```bash
cd folio-backend
bundle install
bundle exec rails db:create
bundle exec rails db:migrate
```

Start the backend on `http://localhost:3001` (or whatever port that suits you). 

```bash
bundle exec rails s -p 3001
```

Now you can head over to the [frontend repository](https://github.com/zhuhanming/folio) and follow the steps described there to get the frontend up and running!
