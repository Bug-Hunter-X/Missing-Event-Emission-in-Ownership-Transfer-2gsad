```javascript
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

function transferOwnership(newOwner) {
  require(msg.sender == owner, "Only the owner can transfer ownership");
  address previousOwner = owner;
  owner = newOwner;
  emit OwnershipTransferred(previousOwner, newOwner);
}
```
The improved `transferOwnership` function now emits an `OwnershipTransferred` event. This event includes indexed parameters for `previousOwner` and `newOwner` allowing for efficient filtering and monitoring of ownership changes.  This is crucial for ensuring proper application state and auditing.