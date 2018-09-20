def my_select(collection)
 if !collection.empty?
   i = 0
   selectedCollection = []
   while i < collection.length
    if yield(collection[i])
      selectedCollection << collection[i]
      i += 1
    end
 end
 else
   puts "Empty Collection"
 end
 return selectedCollection
end
