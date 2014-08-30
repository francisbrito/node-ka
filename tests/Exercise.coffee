class Exercise
    @list: (fn) ->

describe 'Exercise', ->
    describe '.list', ->
        it 'should retrieve a list of exercises in the library.', (done) ->
            Exercise.list (exercises) ->
                exercises.should.be.ok()
                exercises.should.be.an.Array()
                exercises.should.not.be.empty()

                done()
        it 'should retrieve a filtered list of exercises in the library.'
    describe '.byName', ->
        it 'should retrieve exercise indentified by `name`.'
    describe '#videos', ->
        it 'should retrieve a list of videos associated with this exercises.'
