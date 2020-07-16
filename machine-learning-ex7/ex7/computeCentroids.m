function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

total = zeros(K,n);
nums = zeros(K,1);
for i=1:m,
  if(idx(i)==1),
    total(1,:) = total(1,:) + X(i,:);
    nums(1) = nums(1) +1;
  end;
  if(idx(i)==2),
    total(2,:) = total(2,:) + X(i,:);
    nums(2) = nums(2) +1;
  end;
  if(idx(i)==3),
    total(3,:) = total(3,:) + X(i,:);
    nums(3) = nums(3) +1;
  end;
end;
centroids = total./nums;











% =============================================================


end
