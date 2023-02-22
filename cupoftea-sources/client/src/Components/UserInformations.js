const UserDashboard = () => {
	return (
		<form>
			<div>
				<label htmlFor="nom">Nom</label>
				<input type="text" id="nom" value="" disabled="" onChange="" />
			</div>

			<div>
				<label htmlFor="prenom">Prénom</label>
				<input type="text" id="prenom" value="" disabled="" onChange="" />
			</div>

			<div>
				<label htmlFor="email">Email</label>
				<input type="email" id="email" value="" disabled="" onChange="" />
			</div>

			<div>
				<label htmlFor="password">Votre mot de passe</label>
				<input type="password" id="password" value="" onChange="" />
			</div>
			{/* si il y a un message alors on l'affiche*/}
			<p></p>
			<button type="button" onClick="">
				"Modifier" : "Valider les modifications"
			</button>
		</form>
	);
};

export default UserDashboard;
