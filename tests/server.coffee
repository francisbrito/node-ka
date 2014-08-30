fs      = require 'fs'
http    = require 'http'
express = require 'express'
app     = express()
Router  = express.Router

# Helpers
loadFixture = (file) -> JSON.parse fs.readFileSync(file)

# Exercises endpoint
exercises = loadFixture 'tests/fixtures/exercises.json'

exercisesRouter = new Router
exercisesRouter.get '/', (req, res) -> res.json exercises
exercisesRouter.get '/:exercise_name', (req, res) -> res.json exercises[0]

# Topics endpoint
topics = loadFixture 'tests/fixtures/topics.json'

topicsRouter = new Router
topicsRouter.get '/', (req, res) -> res.json topics
topicsRouter.get '/:topic_slug', (req, res) -> res.json topics[0]
topicsRouter.get '/:topic_slug/videos', (req, res) -> res.json topics[0].videos
topicsRouter.get '/:topic_slug/exercises', (req, res) -> res.json topics[0].exercises

# Badges endpoint
badges = loadFixture 'tests/fixtures/badges.json'
badgeCategories = loadFixture 'tests/fixtures/badge-categories.json'

badgesRouter = new Router
badgesRouter.get '/', (req, res) -> res.json badges
badgesRouter.get '/categories', (req, res) -> res.json badgeCategories
badgesRouter.get '/categories/:category', (req, res) -> res.json badgeCategories[0]

# TODO: User endpoint

app.use '/exercises', exercisesRouter
app.use '/topics', topicsRouter
app.use '/badges', badgesRouter

server = http.createServer app

server.listen 3000

console.log 'Listening at port 3000.'
