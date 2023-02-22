import "./App.css";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Footer from "./Components/Footer.js";
import Header from "./Components/Header.js";
import Nav from "./Components/Nav.js";
import Home from "./Controller/Home.js";

function App() {
	return (
		<BrowserRouter>
			<Header />
			<Nav />
			<Home />
			<Routes>
			</Routes>
			<Footer />
		</BrowserRouter>
	);
};

export default App;




