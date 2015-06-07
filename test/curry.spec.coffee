describe "delvec", ->

  beforeEach ->
    @curry = require "../src/curry.coffee"

  it "curries a function", ->
    curried = @curry (a, b, c, d) ->
      a + b + c + d

    expect(curried(1,2,3,4)).    toBe 10
    expect(curried(1,2,3)(4)).   toBe 10
    expect(curried(1)(2,3)(4)).  toBe 10
    expect(curried(1)(2)(3)(4)). toBe 10
