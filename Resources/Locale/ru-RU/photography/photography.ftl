# TODO: Make this a fluent function in RT
photograph-name-text = Это фотография. На ней { PROPER($entity) ->
    *[false] { $entity }
     [true] { $entity }
    }.
photograph-name-text-empty = Это фотография.
photograph-name-text-photograph = Это фотография другой фотографии.
