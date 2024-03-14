import './App.css';
import React, { useState } from 'react'; 
import PostsList from './features/posts/PostsList';

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
       <div className="App">
        <h1 className="abc">React Rails App</h1>
        <p> Find this application layout</p>
        <PostsList />
      </div>  
          
    </>
  );
}

export default App
