toArray = (d) -> Array.prototype.slice.call(d)

currify = (fn, args, remaining) ->
  if remaining < 1
    return fn.apply(null, args)

  ->
    currify(
      fn,
      args.slice(0, fn.length - 1).concat(toArray(arguments)),
      remaining - arguments.length
    )

curry = (fn) ->
  ->
    currify(fn, toArray(arguments), fn.length - arguments.length)

module.exports = curry
