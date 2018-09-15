# Advanced Queries

Welcome to my **Advanced Queries** repo! This repo is a companion to the video series [Advanced ActiveRecord Querying](https://thoughtbot.com/upcase/advanced-activerecord-querying) from thoughtbot's Upcase. It aims to help developers follow along with the videos and experiment with the queries discussed in the series as well as their own.

## Installation

To clone and run this project locally, you'll need [Git](https://git-scm.com) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/tacit7/advanced-queries.git

# Go into the repository
$ cd advanced-queries

# Install dependencies (if any)
$ bundle install
```
## Usage


To help you get started quickly, there are seed files for each part of the series. These seeds set up the necessary data for you to follow along with the examples:

```bash
rake seed:belongs_to # create a db with data from the belongs_to article
rake seed:has_many # create a db with data from the has_many article
rake seed:custom_joins # create a db with data from the custom joins article
rake seed:aggregations # create a db with data from the aggregations article

```


Once you have the repository cloned, dependencies installed, and your database seeded, you can start exploring the examples and tutorials provided. Each section in the repository is designed to build on the previous one, guiding you through increasingly complex queries. The examples align with the content of the video series, enabling you to follow along and experiment with the queries discussed.


Feel free to modify the examples and run them against your own database to see how they work in practice.
