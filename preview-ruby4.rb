# Liquid 4 still calls Object#tainted?, which Ruby 4 removed.
# Ruby stopped supporting taint tracking, so every object is untainted.
class Object
  def tainted?
    false
  end
end
