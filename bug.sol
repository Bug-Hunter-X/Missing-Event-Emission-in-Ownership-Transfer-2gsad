```javascript
function transferOwnership(newOwner) {
  require(msg.sender == owner, "Only the owner can transfer ownership");
  owner = newOwner;
}
```
The `transferOwnership` function does not emit an event to notify other parts of the application or other users about the change in ownership. This can lead to unexpected behavior if other parts of the application rely on knowing when the ownership changes.