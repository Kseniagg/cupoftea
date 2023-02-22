const Connexion = () => {
	return (
		<>
			<h1>Connexion</h1>
			<p style={{ color: "red" }}></p>
			<form>
				<div>
					<label htmlFor="email">Votre email</label>
					<input type="email" id="email" value="" onChange="" />
				</div>
				<div>
					<label htmlFor="password">Votre mot de passe</label>
					<input type="password" id="password" value="" onChange="" />
				</div>
				<button className="btn" type="button" onClick="">
					Se connecter
				</button>
			</form>
			<p>
				<a href="/createAccount">Je n'ai pas encore de compte</a>
			</p>
		</>
	);
};
export default Connexion;
