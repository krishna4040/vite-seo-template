import { HelmetProvider } from "react-helmet-async"
import { BrowserRouter as Router, Route, Routes } from "react-router-dom"
import Home from "./pages/Home"

function App() {
  return (
    <HelmetProvider>
      <Router>
        <Routes>
          <Route path="/" element={<Home />} />
        </Routes>
      </Router>
    </HelmetProvider>
  )
}

export default App
