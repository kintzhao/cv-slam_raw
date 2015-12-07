
for i=1:640
    for j=1:480
      a(i,j) = 1 - min(0.99,sqrt( ((320-i)/320)^2 + ((240-j)/240)^2) );
    end
end

    