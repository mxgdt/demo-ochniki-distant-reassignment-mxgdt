import './styles.css'

import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App'
import { HashRouter, Route, Routes } from 'react-router-dom'
import Form from './components/Form'

ReactDOM.createRoot(document.getElementById('root')).render(
  // <React.StrictMode>
  //   <App />
  // </React.StrictMode>
  <div className="container max-w-[500px] mx-auto flex gap-5 p-20 font-family-Calibri">
    <HashRouter>
      <React.StrictMode>
        <Routes>
          <Route path="/" element={<App />} />
          <Route path="/add" element={<Form />} />
          <Route path="/update" element={<Form isEdit={true} />} />
        </Routes>
      </React.StrictMode>
    </HashRouter>
  </div>
)
