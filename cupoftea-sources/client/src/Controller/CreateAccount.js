const CreateAccount = () => {
	return (
		<>
			<h1>Créer un compte</h1>
			<p></p>
			<form id="cr">
				<div>
					<label htmlFor="nom">Votre nom</label>
					<input type="text" id="nom" value="" onChange="" />
				</div>
				<div>
					<label htmlFor="prenom">Votre prénom</label>
					<input type="text" id="prenom" value="" onChange="" />
				</div>
				<div>
					<label htmlFor="email">Votre email</label>
					<input type="email" id="email" value="" onChange="" />
				</div>
				<div>
					<label htmlFor="password">Votre mot de passe</label>
					<input type="password" id="password" value="" onChange="" />
				</div>
				<button className="btn" type="button" onClick="">
					Créer un compte
				</button>
			</form>
			<p>
				<a href="/connexion">J'ai déjà un compte</a>
			</p>
		</>
	);
};

export default CreateAccount;
