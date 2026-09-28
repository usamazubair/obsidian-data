**A quick example note**

> **Event Loop**  
> **Summary:** The mechanism that lets single-threaded JavaScript handle async work without blocking.  
> **What:** The call stack runs code; async callbacks wait in queues; the loop moves them to the stack when it's empty.  
> **Why:** So I/O, timers, and network calls don't freeze the app.  
> **Example:** `setTimeout(0)` runs after `Promise.then` because microtasks run before macrotasks.  
> **At work:** Fixed a UI freeze caused by a heavy loop blocking the main thread.  
> **Questions:** What's printed first? Microtask vs macrotask? How does Node's event loop differ?  
> **Related:** Promises, async/await, Node internals