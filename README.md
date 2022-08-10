# upgradeable-contract
This a an Upgradeable contract written in solidity
It makes use of delegatecall <br>
THe two contracts are deployed in our remix IDE. <br>
The address of the implementation contract is copied and pasted into the proxy contract setvars input and a any number can be apssed into it with it. <br>
the setvars function is clicked and we checked the result by clicking the other buttons <br>
<br>
<br>
#upgrading our contract <br>
the implemetation contract setvars num is changed from num = _num to num = _num * 4 and deployed again.  <br>
changing the state of the result. the proxy contract parameters are set as metioned in line 5.  <br>
the setvars button is clicked and we checked the result. <br>
this gives us another ouput which is different from the result we get the first time we set parameters to the setvars function. <br>
<br> 
<br>
Thank you
