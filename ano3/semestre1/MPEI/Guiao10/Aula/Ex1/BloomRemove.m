function [Bloom] = BloomRemove(Bloom, elem, k)
%BLOOMREMOVE Removes an element from a Counting Bloom Filter
%   Bloom: The Counting Bloom Filter (array of integers)
%   elem: The element to be removed
%   k: The number of hash functions used

    n = length(Bloom);

    for i = 1:k
        elem = [elem int2str(i)];
        index = mod(string2hash(elem), n) + 1;
        
        if Bloom(index) > 0
            Bloom(index) = Bloom(index) - 1;
        end
    end
end
