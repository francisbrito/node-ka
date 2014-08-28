describe 'Topic', ->
    describe '.tree', ->
        it 'should return the topic tree.'
    describe '.byReadableId', ->
        it 'should return a topic if id matches topic id.'
        it 'should return null if no topic matches such id.'
    describe '.bySlug', ->
        it 'should return a topic if slug matches topic slug.'
        it 'should return null if no topic matches such slug.'
    describe '#exercises', ->
        it 'should return a collection of exercises associated with this topic.'
    describe '#videos', ->
        it 'should return a collection of videos associated with this topic.'
